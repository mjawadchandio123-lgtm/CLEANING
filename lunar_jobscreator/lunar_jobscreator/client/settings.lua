-- ============================================
-- settings.lua
-- Client settings and configuration
-- 
-- Part of: Lunar Job Creator - FiveM Resource
-- ============================================

local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
Settings = L0_1
L0_1 = false
L1_1 = lib
L1_1 = L1_1.callback
L2_1 = "lunar_unijob:getSettings"
L3_1 = false

-- Local function handler

-- Local function handler
function L4_1(A0_2)
  local L1_2
  Settings = A0_2
  L1_2 = true
  L0_1 = L1_2
end
L1_1(L2_1, L3_1, L4_1)

-- Event handler registration

-- Event handler registration
L1_1 = RegisterNetEvent
L2_1 = "lunar_unijob:updateSettings"

-- Local function handler

-- Local function handler
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  Settings = A0_2
  L1_2 = UI
  L1_2 = L1_2.sendMessage
  L2_2 = "updateSettings"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "getSettings"

-- Local function handler

-- Local function handler
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  while true do
    L2_2 = L0_1
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = Settings
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "updateSettings"

-- Local function handler

-- Local function handler
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_unijob:updateSettings"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
