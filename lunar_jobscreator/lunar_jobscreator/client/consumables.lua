-- ============================================
-- consumables.lua
-- Client consumable items handler
-- 
-- Part of: Lunar Job Creator - FiveM Resource
-- ============================================

local L0_1, L1_1, L2_1

-- Event handler registration

-- Event handler registration
L0_1 = RegisterNetEvent
L1_1 = "lunar_unijob:useConsumable"

-- Local function handler

-- Local function handler
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Config
  L1_2 = L1_2.usableItems
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = LR
  L2_2 = L2_2.progressBar
  L3_2 = L1_2.progress
  L4_2 = L1_2.duration
  L5_2 = false
  L6_2 = L1_2.animation
  L7_2 = Utils
  L7_2 = L7_2.convertAnimProp
  L8_2 = L1_2.prop
  L7_2, L8_2 = L7_2(L8_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if L2_2 then
    L2_2 = Editable
    L2_2 = L2_2.updateStatus
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
