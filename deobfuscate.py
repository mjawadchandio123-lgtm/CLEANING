#!/usr/bin/env python3
"""
Lua Deobfuscation Utility
Converts obfuscated variable names (L0_1, L1_1, etc.) to more readable names
"""

import re
import sys

def deobfuscate_lua(content):
    """
    Deobfuscate Lua code by replacing L0_1, L1_1, etc. with meaningful names
    and adding helpful comments
    """
    
    # Remove the promotional header
    content = re.sub(
        r'^-- =+\n-- More exclusive content.*?\n-- =+\n\n',
        '-- Deobfuscated Lua file\n\n',
        content,
        flags=re.MULTILINE | re.DOTALL
    )
    
    # Map to track variable names
    var_map = {}
    var_counter = {}
    
    # Function to get a meaningful name for a variable
    def get_var_name(var_key, context=""):
        if var_key in var_map:
            return var_map[var_key]
        
        # Try to infer name from common patterns
        scope_level = int(var_key.split('_')[-1]) if '_' in var_key else 0
        prefix = var_key.split('_')[0]  # e.g., 'L' for local, 'A' for arg
        
        # Determine if this looks like a function or important variable
        if not prefix in var_counter:
            var_counter[prefix] = 0
        
        var_counter[prefix] += 1
        
        # Create readable name based on pattern
        if prefix == 'A':  # Arguments
            name = f"arg{var_counter[prefix]}"
        elif prefix == 'L':  # Locals
            name = f"var{var_counter[prefix]}" if scope_level == 1 else f"local{var_counter[prefix]}"
        else:
            name = f"val{var_counter[prefix]}"
        
        var_map[var_key] = name
        return name
    
    # Remove long variable declarations and replace gradually
    lines = content.split('\n')
    processed_lines = []
    
    for i, line in enumerate(lines):
        # Handle the long local declaration lines (e.g., "local L0_1, L1_1, L2_1...")
        if re.match(r'^local\s+L\d+_\d+.*?,\s*L\d+_\d+', line):
            # Skip these lines - we'll replace inline instead
            continue
        
        # Replace obfuscated variable references
        # This is a simple replacement - in reality, better analysis would help
        new_line = line
        
        # Replace L0_1, L1_1, L2_1, etc. - but be careful not to break function parameters
        # A more sophisticated approach would track scope
        pattern = r'\bL(\d+)_(\d+)\b'
        
        def replace_var(match):
            var_key = f"L{match.group(1)}_{match.group(2)}"
            return get_var_name(var_key)
        
        # Only replace in assignments and references, not in declarations for now
        if ' = ' in new_line or '(' in new_line:
            # Be conservative - only replace after = or in function calls
            parts = []
            in_function_call = False
            
            # Simple approach: replace all L\d_\d patterns
            new_line = re.sub(pattern, replace_var, new_line)
        
        # Add comments to function definitions
        if 'function ' in new_line and '(' in new_line:
            new_line = '-- Function\n' + new_line
        
        if new_line.strip():  # Skip completely empty lines for now, but keep some
            processed_lines.append(new_line)
    
    result = '\n'.join(processed_lines)
    
    # Add header comment
    header = """-- ============================================
-- Deobfuscated Lua Resource File
-- This file has been cleaned from obfuscation
-- for better readability and maintainability
-- ============================================

"""
    
    result = header + result
    
    return result

def main():
    if len(sys.argv) < 2:
        print("Usage: python3 deobfuscate.py <input_file> [output_file]")
        print("If output_file is not specified, overwrites the input file")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else input_file
    
    try:
        with open(input_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        deobfuscated = deobfuscate_lua(content)
        
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(deobfuscated)
        
        print(f"✓ Deobfuscated: {input_file} -> {output_file}")
        
    except Exception as e:
        print(f"✗ Error: {e}")
        sys.exit(1)

if __name__ == '__main__':
    main()
