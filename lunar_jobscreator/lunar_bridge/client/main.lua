-- Lunar Bridge Module - Client Side
-- Provides UI/notification system and utility exports
-- 

-- Initialize main object
local BridgeClient = {}

-- Register event handler for notifications
RegisterNetEvent('lunar_bridge:showNotification')
AddEventHandler('lunar_bridge:showNotification', ShowNotification)

-- Attach UI functions to bridge object
BridgeClient.notify = ShowNotification
BridgeClient.showUI = ShowUI
BridgeClient.hideUI = HideUI
BridgeClient.progressBar = ShowProgressBar
BridgeClient.progressActive = IsProgressActive
BridgeClient.cancelProgress = CancelProgress
BridgeClient.showObjective = ShowObjective
BridgeClient.hideObjective = HideObjective
BridgeClient.showBars = ShowBars
BridgeClient.hideBars = HideBars

-- Load utilities from bridge server
BridgeClient.Utils = GetUtils()

-- Validate utilities module is loaded correctly
if BridgeClient.Utils then
    local utilsId = tonumber(tostring(GetUtils):sub(11, 16))
    local expectedId = BridgeClient.Utils.id
    
    if utilsId ~= expectedId then
        return
    end
end

-- Export the main object for use by other resources
exports('getObject', function()
    return BridgeClient
end)

-- Create and export utilities namespace
local Utils = {}
Utils.isPolice = BridgeClient.Utils.isPolice
Utils.createBlip = BridgeClient.Utils.createBlip

-- Export configuration getter
exports('getConfig', function()
    return Config
end)
