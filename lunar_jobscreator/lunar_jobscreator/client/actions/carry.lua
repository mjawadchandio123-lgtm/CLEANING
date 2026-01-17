-- ════════════════════════════════════════════════════════════
-- carry.lua
-- Carry action - allows players to carry others
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function carryData()
  local L0_2, temp1
  L0_2 = isCarrying
  if L0_2 then
    L0_2 = TriggerServerEvent
    temp1 = "lunar_unijob:stopCarry"
    L0_2(temp1)
    L0_2 = Binds
    L0_2 = L0_2.interact
    L0_2 = L0_2.removeListener
    temp1 = "stop_carry"
    L0_2(temp1)
  end
end

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function animDict()
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11
  L0_2 = Binds
  L0_2 = L0_2.interact
  L0_2 = L0_2.addListener
  temp1 = "stop_carry"
  temp2 = carryData
  L0_2(temp1, temp2)
  L0_2 = LR
  L0_2 = L0_2.showUI
  temp1 = locale
  temp2 = "stop_carrying"
  temp3 = Binds
  temp3 = temp3.interact
  temp4 = temp3
  temp3 = temp3.getCurrentKey
  temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11 = temp3(temp4)
  temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11 = temp1(temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11)
  L0_2(temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11)
  while true do
    L0_2 = isCarrying
    if not L0_2 then
      break
    end
    L0_2 = IsEntityPlayingAnim
    temp1 = cache
    temp1 = temp1.ped
    temp2 = "missfinale_c2mcs_1"
    temp3 = "fin_c2_mcs_1_camman"
    temp4 = 3
    L0_2 = L0_2(temp1, temp2, temp3, temp4)
    if not L0_2 then
      L0_2 = lib
      L0_2 = L0_2.requestAnimDict
      temp1 = "missfinale_c2mcs_1"
      L0_2(temp1)
      L0_2 = TaskPlayAnim
      temp1 = cache
      temp1 = temp1.ped
      temp2 = "missfinale_c2mcs_1"
      temp3 = "fin_c2_mcs_1_camman"
      temp4 = 8.0
      temp5 = -8.0
      temp6 = -1
      temp7 = 49
      temp8 = 0
      temp9 = false
      temp10 = false
      temp11 = false
      L0_2(temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11)
      L0_2 = RemoveAnimDict
      temp1 = "missfinale_c2mcs_1"
      L0_2(temp1)
    end
    L0_2 = Wait
    temp1 = 200
    L0_2(temp1)
  end
  L0_2 = LR
  L0_2 = L0_2.hideUI
  L0_2()
end

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function animName()
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11
  L0_2 = Binds
  L0_2 = L0_2.interact
  L0_2 = L0_2.addListener
  temp1 = "stop_carry"
  temp2 = carryData
  L0_2(temp1, temp2)
  L0_2 = LR
  L0_2 = L0_2.showUI
  temp1 = locale
  temp2 = "stop_carried"
  temp3 = Binds
  temp3 = temp3.interact
  temp4 = temp3
  temp3 = temp3.getCurrentKey
  temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11 = temp3(temp4)
  temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11 = temp1(temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11)
  L0_2(temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11)
  while true do
    L0_2 = isCarrying
    if not L0_2 then
      break
    end
    L0_2 = IsEntityPlayingAnim
    temp1 = cache
    temp1 = temp1.ped
    temp2 = "nm"
    temp3 = "firemans_carry"
    temp4 = 3
    L0_2 = L0_2(temp1, temp2, temp3, temp4)
    if not L0_2 then
      L0_2 = lib
      L0_2 = L0_2.requestAnimDict
      temp1 = "nm"
      L0_2(temp1)
      L0_2 = TaskPlayAnim
      temp1 = cache
      temp1 = temp1.ped
      temp2 = "nm"
      temp3 = "firemans_carry"
      temp4 = 8.0
      temp5 = -8.0
      temp6 = -1
      temp7 = 33
      temp8 = 0
      temp9 = false
      temp10 = false
      temp11 = false
      L0_2(temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11)
      L0_2 = RemoveAnimDict
      temp1 = "nm"
      L0_2(temp1)
    end
    L0_2 = IsPlayerDead
    temp1 = cache
    temp1 = temp1.playerId
    L0_2 = L0_2(temp1)
    if L0_2 then
      L0_2 = carryData
      L0_2()
      break
    end
    L0_2 = Wait
    temp1 = 200
    L0_2(temp1)
  end
  L0_2 = LR
  L0_2 = L0_2.hideUI
  L0_2()
end
bone = Actions
bone = bone.createPlayer
callback = "carry"
index = "hands"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function value(param1)
  local temp1, temp2, temp3
  isCarrying = param1
  temp1 = TriggerServerEvent
  temp2 = "lunar_unijob:carry"
  temp3 = param1
  temp1(temp2, temp3)
  temp1 = CreateThread
  temp2 = animDict
  temp1(temp2)
  temp1 = Editable
  temp1 = temp1.actionPerformed
  temp2 = "carry"
  temp1(temp2)
end
bone(callback, index, value)

-- Event handler registration

-- Event handler registration
bone = RegisterNetEvent
callback = "lunar_unijob:syncCarry"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function index(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2, L16_2, L17_2
  isCarrying = param1
  temp1 = targetPlayer
  temp2 = param1
  temp1 = temp1(temp2)
  if not temp1 then
    return
  end
  temp2 = AttachEntityToEntity
  temp3 = cache
  temp3 = temp3.ped
  temp4 = temp1
  temp5 = 0
  temp6 = 0.27
  temp7 = 0.15
  temp8 = 0.63
  temp9 = 0.5
  temp10 = 0.5
  temp11 = 180
  temp12 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = 2
  L17_2 = false
  temp2(temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2, L16_2, L17_2)
  temp2 = CreateThread
  temp3 = animName
  temp2(temp3)
end
bone(callback, index)

-- Event handler registration

-- Event handler registration
bone = RegisterNetEvent
callback = "lunar_unijob:stopCarry"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function index(param1)
  local temp1, temp2
  temp1 = nil
  isCarrying = temp1
  if param1 then
    temp1 = DetachEntity
    temp2 = cache
    temp2 = temp2.ped
    temp1(temp2)
  end
  temp1 = ClearPedSecondaryTask
  temp2 = cache
  temp2 = temp2.ped
  temp1(temp2)
end
bone(callback, index)

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function bone()
  local L0_2, temp1
  L0_2 = isCarrying
  L0_2 = nil ~= L0_2
  return L0_2
end
IsCarryActive = bone
