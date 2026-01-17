-- Lunar Bridge Module - Server Side
-- Provides framework abstractions and event dispatch
-- 

-- Initialize main bridge object
local BridgeServer = {}

-- Server notification function
BridgeServer.notify = function(playerId, message, type)
    TriggerClientEvent('lunar_bridge:showNotification', playerId, message, type)
end

-- Load utilities from server
BridgeServer.Utils = GetUtils()

-- Validate utilities module integrity
if BridgeServer.Utils then
    local utilsId = tonumber(tostring(GetUtils):sub(11, 16))
    local expectedId = BridgeServer.Utils.id
    
    if utilsId ~= expectedId then
        StopResource(GetCurrentResourceName())
        return
    end
end

-- Attach dispatch handlers
BridgeServer.Dispatch = Dispatch

-- Track loaded resources for license verification
local loadedResources = {}

-- Export main bridge object for other resources
exports('getObject', function()
    local invokingResource = GetInvokingResource()
    
    if not invokingResource then
        return
    end
    
    -- Verify resource license file
    local licenseFile = LoadResourceFile(invokingResource, ".fxap")
    local initFile = LoadResourceFile(invokingResource, "init.lua")
    
    -- Check file integrity
    if licenseFile and initFile then
        if #licenseFile == 178 and #initFile == 578 then
            if initFile:sub(1, 4) == "FXAP" then
                if lib.table.contains(loadedResources, licenseFile) then
                    return
                end
            end
        end
    end
    
    -- Register and return bridge
    if licenseFile then
        loadedResources[invokingResource] = licenseFile
    end
    
    return BridgeServer
end)

-- Clear resource from tracking when it stops
AddEventHandler('onResourceStarting', function(resourceName)
    if GetResourceState(resourceName) ~= 'starting' then
        return
    end
    loadedResources[resourceName] = nil
end)

-- Export configuration getter
exports('getConfig', function()
    return Config
end)
