-- ════════════════════════════════════════════════════════════
-- cuff.lua
-- Cuff action - restraint system
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function value(targetId)
  local temp1, temp2, temp3
  temp1 = TriggerServerEvent
  temp2 = "lunar_unijob:cuffToggle"
  temp3 = targetId
  temp1(temp2, temp3)
end
result(callback, index, value)

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function result(targetId)
  local temp1, temp2, temp3
  temp1 = GetPlayerFromServerId
  temp2 = targetId
  temp1 = temp1(temp2)
  temp2 = senderPed
  if 0 == temp2 then
    return
  end
  temp2 = GetPlayerPed
  temp3 = temp1
  return temp2(temp3)
end
callback = "mp_arrest_paired"
index = "mp_arresting"
value = "cop_p2_back_left"
status = "crook_p2_back_left"
state = "a_uncuff"

-- Event handler registration

-- Event handler registration
handler = RegisterNetEvent
L12_1 = "lunar_unijob:cuffReceiver"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function L13_1(targetId)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17, var18, var19, var20, L21_2, L22_2, L23_2
  temp1 = lib
  temp1 = temp1.callback
  temp1 = temp1.await
  temp2 = "lunar_unijob:getPlayerCuffState"
  temp3 = false
  temp4 = cache
  temp4 = temp4.serverId
  temp1 = temp1(temp2, temp3, temp4)
  temp2 = result
  temp3 = targetId
  temp2 = temp2(temp3)
  if not temp2 then
    return
  end
  if temp1 then
    temp3 = SetEnableHandcuffs
    temp4 = cache
    temp4 = temp4.ped
    temp5 = true
    temp3(temp4, temp5)
    temp3 = DisablePlayerFiring
    temp4 = cache
    temp4 = temp4.ped
    temp5 = true
    temp3(temp4, temp5)
    temp3 = SetCurrentPedWeapon
    temp4 = cache
    temp4 = temp4.ped
    temp5 = -1569615261
    temp6 = true
    temp3(temp4, temp5, temp6)
    temp3 = SetPedCanPlayGestureAnims
    temp4 = cache
    temp4 = temp4.ped
    temp5 = false
    temp3(temp4, temp5)
    temp3 = lib
    temp3 = temp3.requestAnimDict
    temp4 = callback
    temp3(temp4)
    temp3 = AttachEntityToEntity
    temp4 = cache
    temp4 = temp4.ped
    temp5 = temp2
    temp6 = 11816
    temp7 = -0.1
    temp8 = 0.45
    temp9 = 0.0
    temp10 = 0.0
    temp11 = 0.0
    temp12 = 20.0
    var13 = false
    var14 = false
    var15 = false
    var16 = false
    var17 = 20
    var18 = false
    temp3(temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17, var18)
    temp3 = TaskPlayAnim
    temp4 = cache
    temp4 = temp4.ped
    temp5 = callback
    temp6 = status
    temp7 = 8.0
    temp8 = -8.0
    temp9 = 5500
    temp10 = 33
    temp11 = 0
    temp12 = false
    var13 = false
    var14 = false
    temp3(temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14)
    temp3 = Wait
    temp4 = 3500
    temp3(temp4)
    temp3 = DetachEntity
    temp4 = cache
    temp4 = temp4.ped
    temp5 = true
    temp6 = false
    temp3(temp4, temp5, temp6)
    temp3 = RemoveAnimDict
    temp4 = callback
    temp3(temp4)
    temp3 = item
    temp3 = temp3[temp1]
    temp4 = player
    temp4 = temp4[temp1]
    temp7 = temp4
    temp5 = temp7.pos
    temp6 = temp7.rot
    temp7 = lib
    temp7 = temp7.requestModel
    temp8 = temp3
    temp7(temp8)
    temp7 = CreateObject
    temp8 = temp3
    temp9 = 0
    temp10 = 0
    temp11 = 0
    temp12 = true
    var13 = true
    var14 = true
    temp7 = temp7(temp8, temp9, temp10, temp11, temp12, var13, var14)
    cuffData = temp7
    temp7 = GetPedBoneIndex
    temp8 = cache
    temp8 = temp8.ped
    temp9 = 18905
    temp7 = temp7(temp8, temp9)
    temp8 = AttachEntityToEntity
    temp9 = cuffData
    temp10 = cache
    temp10 = temp10.ped
    temp11 = temp7
    temp12 = temp5.x
    var13 = temp5.y
    var14 = temp5.z
    var15 = temp6.x
    var16 = temp6.y
    var17 = temp6.z
    var18 = true
    var19 = true
    var20 = false
    L21_2 = true
    L22_2 = 1
    L23_2 = true
    temp8(temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17, var18, var19, var20, L21_2, L22_2, L23_2)
  else
    temp3 = targetPlayer
    if temp3 then
      temp3 = DetachEntity
      temp4 = cache
      temp4 = temp4.ped
      temp3(temp4)
      temp3 = nil
      targetPlayer = temp3
    end
    temp3 = AttachEntityToEntity
    temp4 = cache
    temp4 = temp4.ped
    temp5 = temp2
    temp6 = 11816
    temp7 = -0.1
    temp8 = 0.65
    temp9 = 0.0
    temp10 = 0.0
    temp11 = 0.0
    temp12 = 20.0
    var13 = false
    var14 = false
    var15 = false
    var16 = false
    var17 = 20
    var18 = false
    temp3(temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17, var18)
    temp3 = Wait
    temp4 = 2000
    temp3(temp4)
    temp3 = DetachEntity
    temp4 = cache
    temp4 = temp4.ped
    temp5 = true
    temp6 = false
    temp3(temp4, temp5, temp6)
    temp3 = SetEnableHandcuffs
    temp4 = cache
    temp4 = temp4.ped
    temp5 = false
    temp3(temp4, temp5)
    temp3 = DisablePlayerFiring
    temp4 = cache
    temp4 = temp4.ped
    temp5 = false
    temp3(temp4, temp5)
    temp3 = SetCurrentPedWeapon
    temp4 = cache
    temp4 = temp4.ped
    temp5 = -1569615261
    temp6 = true
    temp3(temp4, temp5, temp6)
    temp3 = SetPedCanPlayGestureAnims
    temp4 = cache
    temp4 = temp4.ped
    temp5 = true
    temp3(temp4, temp5)
    temp3 = cuffData
    if temp3 then
      temp3 = DeleteEntity
      temp4 = cuffData
      temp3(temp4)
    end
  end
  isCuffed = temp1
end
handler(L12_1, L13_1)

-- Event handler registration

-- Event handler registration
handler = RegisterNetEvent
L12_1 = "lunar_unijob:cuffSender"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function L13_1(targetId)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13
  temp1 = lib
  temp1 = temp1.callback
  temp1 = temp1.await
  temp2 = "lunar_unijob:getPlayerCuffState"
  temp3 = false
  temp4 = targetId
  temp1 = temp1(temp2, temp3, temp4)
  if temp1 then
    temp2 = lib
    temp2 = temp2.requestAnimDict
    temp3 = callback
    temp2(temp3)
    temp2 = TaskPlayAnim
    temp3 = cache
    temp3 = temp3.ped
    temp4 = callback
    temp5 = value
    temp6 = 8.0
    temp7 = -8.0
    temp8 = 5500
    temp9 = 33
    temp10 = 0
    temp11 = false
    temp12 = false
    var13 = false
    temp2(temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13)
    temp2 = Wait
    temp3 = 3500
    temp2(temp3)
    temp2 = ClearPedTasks
    temp3 = cache
    temp3 = temp3.ped
    temp2(temp3)
    temp2 = RemoveAnimDict
    temp3 = callback
    temp2(temp3)
    temp2 = Editable
    temp2 = temp2.actionPerformed
    temp3 = "handcuff"
    temp2(temp3)
  else
    temp2 = lib
    temp2 = temp2.requestAnimDict
    temp3 = index
    temp2(temp3)
    temp2 = TaskPlayAnim
    temp3 = cache
    temp3 = temp3.ped
    temp4 = index
    temp5 = state
    temp6 = 8.0
    temp7 = -8.0
    temp8 = -1
    temp9 = 2
    temp10 = 0
    temp11 = false
    temp12 = false
    var13 = false
    temp2(temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13)
    temp2 = Wait
    temp3 = 2000
    temp2(temp3)
    temp2 = ClearPedTasks
    temp3 = cache
    temp3 = temp3.ped
    temp2(temp3)
    temp2 = RemoveAnimDict
    temp3 = index
    temp2(temp3)
    temp2 = Editable
    temp2 = temp2.actionPerformed
    temp3 = "unhandcuff"
    temp2(temp3)
  end
end
handler(L12_1, L13_1)

-- Event handler registration

-- Event handler registration
handler = RegisterNetEvent
L12_1 = "lunar_unijob:syncCuff"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function L13_1()
  local var0, temp1, temp2, temp3, temp4
  var0 = lib
  var0 = var0.callback
  var0 = var0.await
  temp1 = "lunar_unijob:getPlayerCuffState"
  temp2 = false
  temp3 = cache
  temp3 = temp3.serverId
  var0 = var0(temp1, temp2, temp3)
  if not var0 then
    temp1 = SetEnableHandcuffs
    temp2 = cache
    temp2 = temp2.ped
    temp3 = false
    temp1(temp2, temp3)
    temp1 = DisablePlayerFiring
    temp2 = cache
    temp2 = temp2.ped
    temp3 = false
    temp1(temp2, temp3)
    temp1 = SetCurrentPedWeapon
    temp2 = cache
    temp2 = temp2.ped
    temp3 = -1569615261
    temp4 = true
    temp1(temp2, temp3, temp4)
    temp1 = SetPedCanPlayGestureAnims
    temp2 = cache
    temp2 = temp2.ped
    temp3 = true
    temp1(temp2, temp3)
    temp1 = targetPlayer
    if temp1 then
      temp1 = TriggerEvent
      temp2 = "lunar_unijob:drag"
      temp1(temp2)
    end
  end
  isCuffed = var0
end
handler(L12_1, L13_1)
handler = "anim@move_m@prisoner_cuffed"
L12_1 = "anim@move_m@trash"

-- Event handler registration

-- Event handler registration
L13_1 = RegisterNetEvent
L14_1 = "lunar_unijob:drag"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function L15_1(targetId)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17
  temp1 = isCuffed
  if not temp1 then
    return
  end
  temp1 = targetPlayer
  if not temp1 and targetId then
    temp1 = result
    temp2 = targetId
    temp1 = temp1(temp2)
    if not temp1 then
      return
    end
    temp2 = AttachEntityToEntity
    temp3 = cache
    temp3 = temp3.ped
    temp4 = temp1
    temp5 = 11816
    temp6 = 0.2
    temp7 = 0.45
    temp8 = 0.0
    temp9 = 0.0
    temp10 = 0.0
    temp11 = 0.0
    temp12 = false
    var13 = false
    var14 = false
    var15 = true
    var16 = 2
    var17 = true
    temp2(temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17)
  else
    temp1 = DetachEntity
    temp2 = cache
    temp2 = temp2.ped
    temp1(temp2)
    temp1 = StopAnimTask
    temp2 = cache
    temp2 = temp2.ped
    temp3 = handler
    temp4 = "walk"
    temp5 = 3.0
    temp1(temp2, temp3, temp4, temp5)
    temp1 = StopAnimTask
    temp2 = cache
    temp2 = temp2.ped
    temp3 = L12_1
    temp4 = "run"
    temp5 = 3.0
    temp1(temp2, temp3, temp4, temp5)
  end
  targetPlayer = targetId
end
L13_1(L14_1, L15_1)

-- Event handler registration

-- Event handler registration
L13_1 = RegisterNetEvent
L14_1 = "lunar_unijob:putInVehicle"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function L15_1(targetId)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10
  temp1 = isCuffed
  if temp1 then
    temp1 = targetPlayer
    if temp1 then
      temp1 = NetworkDoesEntityExistWithNetworkId
      temp2 = targetId
      temp1 = temp1(temp2)
      if temp1 then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  temp1 = NetworkGetEntityFromNetworkId
  temp2 = targetId
  temp1 = temp1(temp2)
  temp2 = GetVehicleMaxNumberOfPassengers
  temp3 = temp1
  temp2 = temp2(temp3)
  temp3 = temp2 - 1
  temp4 = 0
  temp5 = -1
  for temp6 = temp3, temp4, temp5 do
    temp7 = IsVehicleSeatFree
    temp8 = temp1
    temp9 = temp6
    temp7 = temp7(temp8, temp9)
    if temp7 then
      temp7 = TaskWarpPedIntoVehicle
      temp8 = cache
      temp8 = temp8.ped
      temp9 = temp1
      temp10 = temp6
      temp7(temp8, temp9, temp10)
      break
    end
  end
end
L13_1(L14_1, L15_1)

-- Event handler registration

-- Event handler registration
L13_1 = RegisterNetEvent
L14_1 = "lunar_unijob:outTheVehicle"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function L15_1()
  local var0, temp1, temp2, temp3, temp4
  var0 = isCuffed
  if var0 then
    var0 = IsPedSittingInAnyVehicle
    temp1 = cache
    temp1 = temp1.ped
    var0 = var0(temp1)
    if var0 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  var0 = GetVehiclePedIsIn
  temp1 = cache
  temp1 = temp1.ped
  temp2 = false
  var0 = var0(temp1, temp2)
  temp1 = TaskLeaveVehicle
  temp2 = cache
  temp2 = temp2.ped
  temp3 = var0
  temp4 = 64
  temp1(temp2, temp3, temp4)
end
L13_1(L14_1, L15_1)

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function L13_1(targetId)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12
  temp1 = IsPedWalking
  temp2 = targetId
  temp1 = temp1(temp2)
  if temp1 then
    temp1 = IsEntityPlayingAnim
    temp2 = cache
    temp2 = temp2.ped
    temp3 = handler
    temp4 = "walk"
    temp5 = 3
    temp1 = temp1(temp2, temp3, temp4, temp5)
    if not temp1 then
      temp1 = lib
      temp1 = temp1.requestAnimDict
      temp2 = handler
      temp1(temp2)
      temp1 = TaskPlayAnim
      temp2 = cache
      temp2 = temp2.ped
      temp3 = handler
      temp4 = "walk"
      temp5 = 3.0
      temp6 = 3.0
      temp7 = -1
      temp8 = 1
      temp9 = 0.0
      temp10 = false
      temp11 = false
      temp12 = false
      temp1(temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12)
      temp1 = RemoveAnimDict
      temp2 = handler
      temp1(temp2)
    end
  else
    temp1 = IsPedRunning
    temp2 = targetId
    temp1 = temp1(temp2)
    if not temp1 then
      temp1 = IsPedSprinting
      temp2 = targetId
      temp1 = temp1(temp2)
      if not temp1 then
        goto lbl_82
      end
    end
    temp1 = Settings
    temp1 = temp1.sprintWhileDrag
    if temp1 then
      temp1 = IsEntityPlayingAnim
      temp2 = cache
      temp2 = temp2.ped
      temp3 = L12_1
      temp4 = "run"
      temp5 = 3
      temp1 = temp1(temp2, temp3, temp4, temp5)
      if not temp1 then
        temp1 = lib
        temp1 = temp1.requestAnimDict
        temp2 = L12_1
        temp1(temp2)
        temp1 = TaskPlayAnim
        temp2 = cache
        temp2 = temp2.ped
        temp3 = L12_1
        temp4 = "run"
        temp5 = 3.0
        temp6 = 3.0
        temp7 = -1
        temp8 = 1
        temp9 = 0.0
        temp10 = false
        temp11 = false
        temp12 = false
        temp1(temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12)
        temp1 = RemoveAnimDict
        temp2 = L12_1
        temp1(temp2)
      end
    ::lbl_82::
    else
      temp1 = StopAnimTask
      temp2 = cache
      temp2 = temp2.ped
      temp3 = handler
      temp4 = "walk"
      temp5 = 3.0
      temp1(temp2, temp3, temp4, temp5)
      temp1 = StopAnimTask
      temp2 = cache
      temp2 = temp2.ped
      temp3 = L12_1
      temp4 = "run"
      temp5 = 3.0
      temp1(temp2, temp3, temp4, temp5)
    end
  end
end
L14_1 = "mp_arresting"
L15_1 = false
L16_1 = false
L17_1 = SetInterval

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function L18_1()
  local var0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11
  var0 = isCuffed
  if var0 then
    var0 = targetPlayer
    if var0 then
      var0 = result
      temp1 = targetPlayer
      var0 = var0(temp1)
      if not var0 then
        return
      end
      temp1 = L13_1
      temp2 = var0
      temp1(temp2)
    end
    var0 = IsEntityPlayingAnim
    temp1 = cache
    temp1 = temp1.ped
    temp2 = L14_1
    temp3 = "idle"
    temp4 = 3
    var0 = var0(temp1, temp2, temp3, temp4)
    if var0 then
      var0 = Config
      var0 = var0.forceCuffAnim
      if not var0 then
        var0 = L16_1
        if not var0 then
          goto lbl_57
        end
      end
    end
    var0 = lib
    var0 = var0.requestAnimDict
    temp1 = L14_1
    var0(temp1)
    var0 = TaskPlayAnim
    temp1 = cache
    temp1 = temp1.ped
    temp2 = L14_1
    temp3 = "idle"
    temp4 = 8.0
    temp5 = -8
    temp6 = -1
    temp7 = 49
    temp8 = 0.0
    temp9 = false
    temp10 = false
    temp11 = false
    var0(temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11)
    var0 = RemoveAnimDict
    temp1 = L14_1
    var0(temp1)
    var0 = true
    L15_1 = var0
    var0 = false
    L16_1 = var0
    ::lbl_57::
    var0 = IsPedRagdoll
    temp1 = cache
    temp1 = temp1.ped
    var0 = var0(temp1)
    if var0 then
      var0 = true
      L16_1 = var0
    end
  else
    var0 = L15_1
    if var0 then
      var0 = IsEntityPlayingAnim
      temp1 = cache
      temp1 = temp1.ped
      temp2 = L14_1
      temp3 = "idle"
      temp4 = 3
      var0 = var0(temp1, temp2, temp3, temp4)
      if var0 then
        var0 = ClearPedTasks
        temp1 = cache
        temp1 = temp1.ped
        var0(temp1)
        var0 = false
        L15_1 = var0
      end
    end
  end
end
L19_1 = 100
L17_1(L18_1, L19_1)
L17_1 = CreateThread

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function L18_1()
  local var0, temp1
  while true do
    var0 = isCuffed
    if var0 then
      var0 = Editable
      var0 = var0.handcuffControls
      var0()
      var0 = Wait
      temp1 = 0
      var0(temp1)
    else
      var0 = Wait
      temp1 = 500
      var0(temp1)
    end
  end
end
L17_1(L18_1)

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function L17_1()
  local var0, temp1
  var0 = isCuffed
  return var0
end
IsHandcuffed = L17_1

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function L17_1()
  local var0, temp1
  var0 = targetPlayer
  var0 = nil ~= var0
  return var0
end
IsDragged = L17_1
L17_1 = exports
L18_1 = "isCuffed"
L19_1 = IsHandcuffed
L17_1(L18_1, L19_1)
L17_1 = exports
L18_1 = "isDragged"
L19_1 = IsDragged
L17_1(L18_1, L19_1)
