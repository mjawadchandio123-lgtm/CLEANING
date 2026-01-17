-- ════════════════════════════════════════════════════════════
-- collecting.lua
-- Collection system - gather resources
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

  isActive = temp6
  temp6 = CreateThread

-- Local function handler

-- Local function handler
  function temp7()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = temp1.animation
    L1_3 = temp1.animationProp
    if L0_3 then
      L2_3 = Utils
      L2_3 = L2_3.playAnim
      L3_3 = L0_3
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
    while true do
      L2_3 = isActive
      if not L2_3 then
        break
      end
      L2_3 = LR
      L2_3 = L2_3.progressBar
      L3_3 = temp1.progress
      L4_3 = temp1.duration
      L5_3 = true
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      if not L2_3 then
        L2_3 = TriggerServerEvent
        L3_3 = "lunar_unijob:stopCollecting"
        L2_3(L3_3)
        L2_3 = false
        isActive = L2_3
      end
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
    end
    while true do
      L2_3 = IsPedRagdoll
      L3_3 = cache
      L3_3 = L3_3.ped
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        L2_3 = IsPedFalling
        L3_3 = cache
        L3_3 = L3_3.ped
        L2_3 = L2_3(L3_3)
        if not L2_3 then
          L2_3 = IsPedVaulting
          L3_3 = cache
          L3_3 = L3_3.ped
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            L2_3 = IsPedInMeleeCombat
            L3_3 = cache
            L3_3 = L3_3.ped
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              L2_3 = IsPedClimbing
              L3_3 = cache
              L3_3 = L3_3.ped
              L2_3 = L2_3(L3_3)
              if not L2_3 then
                L2_3 = IsPedInCover
                L3_3 = cache
                L3_3 = L3_3.ped
                L2_3 = L2_3(L3_3)
                if not L2_3 then
                  L2_3 = IsPedReloading
                  L3_3 = cache
                  L3_3 = L3_3.ped
                  L2_3 = L2_3(L3_3)
                  if not L2_3 then
                    L2_3 = IsPedGettingIntoAVehicle
                    L3_3 = cache
                    L3_3 = L3_3.ped
                    L2_3 = L2_3(L3_3)
                    if not L2_3 then
                      L2_3 = IsPedDiving
                      L3_3 = cache
                      L3_3 = L3_3.ped
                      L2_3 = L2_3(L3_3)
                      if not L2_3 then
                        L2_3 = IsPedBeingStunned
                        L3_3 = cache
                        L3_3 = L3_3.ped
                        L2_3 = L2_3(L3_3)
                        if not L2_3 then
                          break
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      L2_3 = Wait
      L3_3 = 100
      L2_3(L3_3)
    end
    L2_3 = ClearPedTasks
    L3_3 = cache
    L3_3 = L3_3.ped
    L2_3(L3_3)
    if L0_3 then
      L2_3 = L0_3
      if L2_3 then
        L2_3 = L2_3.scenario
      end
      if L2_3 then
        while true do
          L2_3 = Utils
          L2_3 = L2_3.isPlayingAnim
          L3_3 = L0_3
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            L2_3 = GetEntityCoords
            L3_3 = cache
            L3_3 = L3_3.ped
            L2_3 = L2_3(L3_3)
            L3_3 = ClearAreaOfObjects
            L4_3 = L2_3.x
            L5_3 = L2_3.y
            L6_3 = L2_3.z
            L7_3 = 2.0
            L8_3 = 0
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
            break
          end
          L2_3 = Wait
          L3_3 = 100
          L2_3(L3_3)
        end
      end
    end
  end
  temp6(temp7)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config()
  local L0_2, temp1
  L0_2 = TriggerServerEvent
  temp1 = "lunar_unijob:stopCollecting"
  L0_2(temp1)
  L0_2 = false
  isActive = L0_2
  L0_2 = LR
  L0_2 = L0_2.progressActive
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = LR
    L0_2 = L0_2.cancelProgress
    L0_2()
  end
end

-- Event handler registration

-- Event handler registration
item = RegisterNetEvent
player = "lunar_unijob:stopCollecting"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result(param1)
  local temp1, temp2, temp3
  temp1 = false
  isActive = temp1
  temp1 = LR
  temp1 = temp1.progressActive
  temp1 = temp1()
  if temp1 then
    temp1 = LR
    temp1 = temp1.cancelProgress
    temp1()
  end
  if param1 then
    temp1 = LR
    temp1 = temp1.notify
    temp2 = param1
    temp3 = "error"
    temp1(temp2, temp3)
  end
end
item(player, result)
item = {}

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  temp1 = param1.collecting
  if not temp1 then
    return
  end
  temp1 = ipairs
  temp2 = param1.collecting
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = ipairs
    temp8 = temp6.locations
    temp7, temp8, temp9, temp10 = temp7(temp8)
    for temp11, temp12 in temp7, temp8, temp9, temp10 do
      L13_2 = Utils
      L13_2 = L13_2.createInteractionPoint
      L14_2 = {}
      L14_2.coords = temp12
      L15_2 = temp6.radius
      if not L15_2 then
        L15_2 = Config
        L15_2 = L15_2.defaultRadius
      end
      L14_2.radius = L15_2
      L15_2 = {}
      L16_2 = {}
      L17_2 = temp6.label
      if not L17_2 then
        L17_2 = locale
        L18_2 = "start_collecting"
        L17_2 = L17_2(L18_2)
      end
      L16_2.label = L17_2
      L17_2 = temp6.icon
      if not L17_2 then
        L17_2 = "hand"
      end
      L16_2.icon = L17_2
      L17_2 = {}
      L17_2.data = temp6
      L17_2.index = temp5
      L17_2.locationIndex = temp11
      L16_2.args = L17_2

-- Local function handler

-- Local function handler
      function L17_2()
        local L0_3, L1_3
        L0_3 = isActive
        L0_3 = IsPedInMeleeCombat
        L1_3 = cache
        L1_3 = L1_3.ped
        L0_3 = L0_3(L1_3)
        L0_3 = not L0_3 and L0_3
        return L0_3
      end
      L16_2.canInteract = L17_2
      L17_2 = data
      L16_2.onSelect = L17_2
      L17_2 = {}
      L18_2 = locale
      L19_2 = "cancel"
      L18_2 = L18_2(L19_2)
      L17_2.label = L18_2
      L17_2.icon = "circle-xmark"

-- Local function handler

-- Local function handler
      function L18_2()
        local L0_3, L1_3
        L0_3 = isActive
        return L0_3
      end
      L17_2.canInteract = L18_2
      L18_2 = config
      L17_2.onSelect = L18_2
      L15_2[1] = L16_2
      L15_2[2] = L17_2
      L14_2.options = L15_2
      L15_2 = temp6.target
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = item
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result()
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6
  L0_2 = ipairs
  temp1 = item
  L0_2, temp1, temp2, temp3 = L0_2(temp1)
  for temp4, temp5 in L0_2, temp1, temp2, temp3 do
    temp6 = temp5.remove
    temp6()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  temp1 = item
  L0_2(temp1)
end
callback = {}
callback.create = player
callback.clear = result
Collecting = callback
