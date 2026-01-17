#!/usr/bin/env python3
"""
Advanced Lua Deobfuscator
Attempts to intelligently deobfuscate Lua code by analyzing patterns
"""

import re
import sys
from collections import defaultdict

class LuaDeobfuscator:
    def __init__(self):
        self.var_map = {}  # Maps L0_1 -> meaningful_name
        self.scope_stack = []  # Track scopes
        self.common_funcs = {
            'type', 'pairs', 'ipairs', 'GetPlayerPed', 'GetEntityCoords',
            'GetResourceState', 'GetCurrentResourceName', 'exports', 'Config',
            'Framework', 'TriggerEvent', 'TriggerClientEvent', 'setmetatable'
        }
    
    def analyze_and_map_variables(self, content):
        """Analyze the code and create meaningful variable mappings"""
        lines = content.split('\n')
        
        for i, line in enumerate(lines):
            # Look for function definitions to understand context
            if 'function L' in line and '(' in line:
                match = re.search(r'function (L\d+_\d+)\(', line)
                if match:
                    var = match.group(1)
                    # Try to infer function name from usage below
                    context = '\n'.join(lines[i:min(i+10, len(lines))])
                    self._infer_function_name(var, context)
            
            # Look for assignments that might reveal variable purpose
            if ' = ' in line:
                # Check if it's assigning a framework object
                if 'Framework' in line or 'Config' in line or 'sharedObject' in line:
                    parts = re.split(r'\s*=\s*', line)
                    if len(parts) >= 2:
                        lhs = parts[0].strip()
                        rhs = '='.join(parts[1:]).strip()
                        # Extract variable name
                        matches = re.findall(r'L\d+_\d+', lhs)
                        if matches:
                            var = matches[0]
                            if 'Framework' in rhs:
                                self.var_map[var] = 'framework_ref'
                            elif 'Config' in rhs:
                                self.var_map[var] = 'config_ref'
    
    def _infer_function_name(self, var, context):
        """Try to infer function name from context"""
        # Look for strings or assignment hints
        if 'getTableSize' in context:
            self.var_map[var] = 'getTableSize'
        elif 'randomFromTable' in context:
            self.var_map[var] = 'randomFromTable'
        elif 'distanceCheck' in context:
            self.var_map[var] = 'distanceCheck'
        elif 'logToDiscord' in context:
            self.var_map[var] = 'logToDiscord'
    
    def deobfuscate(self, content):
        """Main deobfuscation function"""
        
        # Remove promotional header
        content = re.sub(
            r'^-- =+\n-- More exclusive content.*?\n-- =+\n+',
            '',
            content,
            flags=re.MULTILINE | re.DOTALL
        )
        
        # Analyze variables first
        self.analyze_and_map_variables(content)
        
        lines = content.split('\n')
        processed = []
        local_scope_vars = defaultdict(str)
        
        i = 0
        while i < len(lines):
            line = lines[i]
            
            # Skip or simplify long local declarations
            if re.match(r'^local\s+L\d+_\d+.*,\s*L\d+_\d+', line):
                # Extract variable names from declaration
                vars_match = re.findall(r'L\d+_\d+', line)
                # We'll handle these inline instead
                i += 1
                continue
            
            # Process the line
            processed_line = self._process_line(line, local_scope_vars)
            
            # Add comments for better readability
            if 'function ' in line and ' L' in line:
                func_match = re.search(r'function\s+(L\d+_\d+)', line)
                if func_match:
                    func_name = self.var_map.get(func_match.group(1), 'function')
                    processed_line = f'-- {func_name}\n{processed_line}'
            
            if processed_line.strip():
                processed.append(processed_line)
            
            i += 1
        
        # Add header
        header = """-- ============================================
-- Deobfuscated Lua File
-- Automatically cleaned for readability
-- ============================================

"""
        return header + '\n'.join(processed)
    
    def _process_line(self, line, var_map):
        """Process individual lines"""
        # Handle specific obfuscation patterns
        
        # Pattern: local L0_2 = value
        line = re.sub(r'\blocal\s+(L\d+_\d+)\b', r'local var_\1', line)
        
        # Pattern: L0_1.name = value (object properties)
        line = re.sub(r'\b(L\d+_\d+)\.(\w+)', lambda m: f'{self._get_meaningful_var(m.group(1))}.{m.group(2)}', line)
        
        # Pattern: function L0_1(...) 
        line = re.sub(r'\bfunction\s+(L\d+_\d+)', lambda m: f'function {self._get_meaningful_func(m.group(1))}', line)
        
        # Pattern: L0_1 = function (anonymous function assignment)
        if re.search(r'(L\d+_\d+)\s*=\s*function', line):
            match = re.search(r'(L\d+_\d+)\s*=\s*function', line)
            if match:
                var = match.group(1)
                meaningful_name = self.var_map.get(var, f'func_{var}')
                line = line.replace(f'{var} = function', f'{meaningful_name} = function', 1)
        
        return line
    
    def _get_meaningful_var(self, var):
        """Get meaningful name for variable"""
        if var in self.var_map:
            return self.var_map[var]
        
        # Extract the number parts
        match = re.match(r'L(\d+)_(\d+)', var)
        if match:
            level = int(match.group(2))
            num = int(match.group(1))
            if level == 1:
                return f'var{num}'
            else:
                return f'local{num}_L{level}'
        
        return var
    
    def _get_meaningful_func(self, var):
        """Get meaningful name for function"""
        if var in self.var_map:
            return self.var_map[var]
        return self._get_meaningful_var(var)


def main():
    if len(sys.argv) < 2:
        print("Usage: python3 deobfuscate.py <input_file> [output_file]")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else input_file
    
    try:
        with open(input_file, 'r', encoding='utf-8', errors='replace') as f:
            content = f.read()
        
        deobfuscator = LuaDeobfuscator()
        result = deobfuscator.deobfuscate(content)
        
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(result)
        
        print(f'✓ Deobfuscated: {input_file}')
        
    except Exception as e:
        print(f'✗ Error: {e}')
        sys.exit(1)


if __name__ == '__main__':
    main()
