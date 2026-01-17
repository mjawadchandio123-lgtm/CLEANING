# FiveM Job Creator - Bug Report

## Critical Bugs Found

### 1. **Missing Nil Check in QB Framework Client** ⚠️ HIGH PRIORITY
**File**: [lunar_bridge/framework/qb/client.lua](lunar_bridge/framework/qb/client.lua#L38)
**Line**: 38
**Issue**: `Framework.getJobGrade()` doesn't verify if the player is loaded before accessing nested properties
```lua
function Framework.getJobGrade()
    return sharedObject.Functions.GetPlayerData().job.grade.level
end
```
**Risk**: Can throw nil reference error if called before player is loaded
**Fix**: Add safety check
```lua
function Framework.getJobGrade()
    if not Framework.isPlayerLoaded() then
        return false
    end
    return sharedObject.Functions.GetPlayerData().job.grade.level
end
```

---

### 2. **Missing Nil Check in QB Framework Server** ⚠️ HIGH PRIORITY
**File**: [lunar_bridge/framework/qb/server.lua](lunar_bridge/framework/qb/server.lua#L81)
**Line**: 81 & 83
**Issue**: Functions can fail when inventory exports are called without proper existence checks
```lua
return exports['codem-inventory']:AddItem(self.source, name, count, nil, metadata)
return self.QBPlayer.Functions.AddItem(name, count, nil, metadata)
```
**Risk**: Script crash if codem-inventory export fails or QBPlayer is nil
**Fix**: Add error handling with pcall

---

### 3. **Missing Nil Check in ESX Framework Server** ⚠️ HIGH PRIORITY
**File**: [lunar_bridge/framework/esx/server.lua](lunar_bridge/framework/esx/server.lua#L73)
**Line**: 73
**Issue**: Similar to QB framework - missing safety check on inventory exports
```lua
return exports['codem-inventory']:AddItem(self.source, name, count, nil, metadata)
```

---

### 4. **Unsafe Vehicle Spawn in Config** ⚠️ MEDIUM PRIORITY
**File**: [lunar_jobscreator/config/sv_edit.lua](lunar_jobscreator/config/sv_edit.lua#L90)
**Issue**: `generatePlate()` function has infinite loop risk with missing query parameter
```lua
if not MySQL.single.await('SELECT * FROM lunar_jobscreator_vehicles WHERE plate = ?') then
```
**Problem**: Query missing the plate parameter - will always fail or succeed incorrectly
**Fix**: Add the plate parameter to query
```lua
if not MySQL.single.await('SELECT * FROM lunar_jobscreator_vehicles WHERE plate = ?', { plate }) then
```

---

### 5. **Player Data Access Without Safety Check** ⚠️ MEDIUM PRIORITY
**File**: [lunar_bridge/framework/qb/client.lua](lunar_bridge/framework/qb/client.lua#L49)
**Line**: 49
**Issue**: `Framework.getInventory()` can return nil without warning
```lua
Framework.getInventory = function()
    if codemInventory then
        return exports['codem-inventory']:GetClientPlayerInventory()
    end
    return sharedObject.Functions.GetPlayerData().items
end
```
**Risk**: Nil inventory can cause crashes when iterating in client code

---

### 6. **Missing onPlayerLoaded Callback Registration** ⚠️ MEDIUM PRIORITY
**File**: [lunar_bridge/framework/qb/client.lua](lunar_bridge/framework/qb/client.lua#L21)
**Line**: 21-24
**Issue**: Event handler registered AFTER callback, but callback might execute before handler is attached
```lua
Framework.onPlayerLoaded = function(cb)
    if Framework.isPlayerLoaded() then
        cb()
    end
    AddEventHandler('QBCore:Client:OnPlayerLoaded', cb)  -- Added AFTER check
end
```
**Fix**: Register handler first, then do callback check

---

### 7. **Error Messages Could Cause Script Halt** ⚠️ LOW PRIORITY
**Files**: Multiple files using `error()` function
- [lunar_jobscreator/config/cl_edit.lua](lunar_jobscreator/config/cl_edit.lua#L23)
- [lunar_jobscreator/config/sv_edit.lua](lunar_jobscreator/config/sv_edit.lua#L238)

**Issue**: Using `error()` will stop script execution instead of gracefully handling it
**Fix**: Replace with warning/notify system or return false gracefully

---

## Summary
- **Critical Issues**: 2-3
- **Medium Issues**: 3-4  
- **Low Issues**: 1

### Recommended Action Order
1. Fix the `generatePlate()` query parameter bug (likely causing vehicle system failures)
2. Add safety checks to QB/ESX framework functions
3. Add proper nil checks before accessing nested player data
4. Implement proper error handling instead of using `error()`
