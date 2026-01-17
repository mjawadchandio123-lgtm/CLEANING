-- ════════════════════════════════════════════════════════════
-- settings.lua
-- Client settings configuration
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

data = RegisterNetEvent
config = "lunar_unijob:updateSettings"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2, temp3
  Settings = param1
  temp1 = UI
  temp1 = temp1.sendMessage
  temp2 = "updateSettings"
  temp3 = param1
  temp1(temp2, temp3)
end
data(config, item)
data = RegisterNUICallback
config = "getSettings"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1, param2)
  local temp2, temp3
  while true do
    temp2 = isActive
    if temp2 then
      break
    end
    temp2 = Wait
    temp3 = 100
    temp2(temp3)
  end
  temp2 = param2
  temp3 = Settings
  temp2(temp3)
end
data(config, item)
data = RegisterNUICallback
config = "updateSettings"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1, param2)
  local temp2, temp3, temp4
  temp2 = TriggerServerEvent
  temp3 = "lunar_unijob:updateSettings"
  temp4 = param1
  temp2(temp3, temp4)
  temp2 = param2
  temp3 = {}
  temp2(temp3)
end
data(config, item)
