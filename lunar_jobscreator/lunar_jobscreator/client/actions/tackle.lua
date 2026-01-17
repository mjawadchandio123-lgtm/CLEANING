-- ════════════════════════════════════════════════════════════
-- tackle.lua
-- Tackle action - knock down players
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function index(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2, L16_2, L17_2
  temp1 = lib
  temp1 = temp1.requestAnimDict
  temp2 = isTackling
  temp1(temp2)
  temp1 = GetPlayerPed
  temp2 = GetPlayerFromServerId
  temp3 = param1
  temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2, L16_2, L17_2 = temp2(temp3)
  temp1 = temp1(temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2, L16_2, L17_2)
  temp2 = AttachEntityToEntity
  temp3 = cache
  temp3 = temp3.ped
  temp4 = temp1
  temp5 = 11816
  temp6 = 0.25
  temp7 = 0.5
  temp8 = 0.0
  temp9 = 0.5
  temp10 = 0.5
  temp11 = 180.0
  temp12 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = 2
  L17_2 = false
  temp2(temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2, L16_2, L17_2)
  temp2 = TaskPlayAnim
  temp3 = cache
  temp3 = temp3.ped
  temp4 = isTackling
  temp5 = tackleData
  temp6 = 8.0
  temp7 = -8.0
  temp8 = 3000
  temp9 = 0
  temp10 = 0
  temp11 = false
  temp12 = false
  L13_2 = false
  temp2(temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2)
  temp2 = Wait
  temp3 = 3000
  temp2(temp3)
  temp2 = DetachEntity
  temp3 = cache
  temp3 = temp3.ped
  temp2(temp3)
  temp2 = CreateThread

-- Local function handler

-- Local function handler
  function temp3()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = 1
    L1_3 = 30
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = SetPedToRagdoll
      L5_3 = cache
      L5_3 = L5_3.ped
      L6_3 = 1000
      L7_3 = 1000
      L8_3 = 0
      L9_3 = false
      L10_3 = false
      L11_3 = false
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L4_3 = Wait
      L5_3 = 100
      L4_3(L5_3)
    end
  end
  temp2(temp3)
  temp2 = RemoveAnimDict
  temp3 = isTackling
  temp2(temp3)
end
result(callback, index)
result = lib
result = result.addKeybind
callback = {}
callback.defaultMapper = "keyboard"
index = Config
index = index.tackleKeybind
callback.defaultKey = index
callback.name = "tackle"
callback.description = "Player tackling"
callback.onReleased = player
result(callback)
