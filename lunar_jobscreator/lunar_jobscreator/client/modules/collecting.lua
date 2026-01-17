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
    local inner0, inner1, inner2, inner3, inner4, inner5, inner6, inner7, inner8
    inner0 = temp1.animation
    inner1 = temp1.animationProp
    if inner0 then
      inner2 = Utils
      inner2 = inner2.playAnim
      inner3 = inner0
      inner4 = inner1
      inner2(inner3, inner4)
    end
    while true do
      inner2 = isActive
      if not inner2 then
        break
      end
      inner2 = LR
      inner2 = inner2.progressBar
      inner3 = temp1.progress
      inner4 = temp1.duration
      inner5 = true
      inner2 = inner2(inner3, inner4, inner5)
      if not inner2 then
        inner2 = TriggerServerEvent
        inner3 = "lunar_unijob:stopCollecting"
        inner2(inner3)
        inner2 = false
        isActive = inner2
      end
      inner2 = Wait
      inner3 = 0
      inner2(inner3)
    end
    while true do
      inner2 = IsPedRagdoll
      inner3 = cache
      inner3 = inner3.ped
      inner2 = inner2(inner3)
      if not inner2 then
        inner2 = IsPedFalling
        inner3 = cache
        inner3 = inner3.ped
        inner2 = inner2(inner3)
        if not inner2 then
          inner2 = IsPedVaulting
          inner3 = cache
          inner3 = inner3.ped
          inner2 = inner2(inner3)
          if not inner2 then
            inner2 = IsPedInMeleeCombat
            inner3 = cache
            inner3 = inner3.ped
            inner2 = inner2(inner3)
            if not inner2 then
              inner2 = IsPedClimbing
              inner3 = cache
              inner3 = inner3.ped
              inner2 = inner2(inner3)
              if not inner2 then
                inner2 = IsPedInCover
                inner3 = cache
                inner3 = inner3.ped
                inner2 = inner2(inner3)
                if not inner2 then
                  inner2 = IsPedReloading
                  inner3 = cache
                  inner3 = inner3.ped
                  inner2 = inner2(inner3)
                  if not inner2 then
                    inner2 = IsPedGettingIntoAVehicle
                    inner3 = cache
                    inner3 = inner3.ped
                    inner2 = inner2(inner3)
                    if not inner2 then
                      inner2 = IsPedDiving
                      inner3 = cache
                      inner3 = inner3.ped
                      inner2 = inner2(inner3)
                      if not inner2 then
                        inner2 = IsPedBeingStunned
                        inner3 = cache
                        inner3 = inner3.ped
                        inner2 = inner2(inner3)
                        if not inner2 then
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
      inner2 = Wait
      inner3 = 100
      inner2(inner3)
    end
    inner2 = ClearPedTasks
    inner3 = cache
    inner3 = inner3.ped
    inner2(inner3)
    if inner0 then
      inner2 = inner0
      if inner2 then
        inner2 = inner2.scenario
      end
      if inner2 then
        while true do
          inner2 = Utils
          inner2 = inner2.isPlayingAnim
          inner3 = inner0
          inner2 = inner2(inner3)
          if not inner2 then
            inner2 = GetEntityCoords
            inner3 = cache
            inner3 = inner3.ped
            inner2 = inner2(inner3)
            inner3 = ClearAreaOfObjects
            inner4 = inner2.x
            inner5 = inner2.y
            inner6 = inner2.z
            inner7 = 2.0
            inner8 = 0
            inner3(inner4, inner5, inner6, inner7, inner8)
            break
          end
          inner2 = Wait
          inner3 = 100
          inner2(inner3)
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
  local var0, temp1
  var0 = TriggerServerEvent
  temp1 = "lunar_unijob:stopCollecting"
  var0(temp1)
  var0 = false
  isActive = var0
  var0 = LR
  var0 = var0.progressActive
  var0 = var0()
  if var0 then
    var0 = LR
    var0 = var0.cancelProgress
    var0()
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
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17, var18, var19
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
      var13 = Utils
      var13 = var13.createInteractionPoint
      var14 = {}
      var14.coords = temp12
      var15 = temp6.radius
      if not var15 then
        var15 = Config
        var15 = var15.defaultRadius
      end
      var14.radius = var15
      var15 = {}
      var16 = {}
      var17 = temp6.label
      if not var17 then
        var17 = locale
        var18 = "start_collecting"
        var17 = var17(var18)
      end
      var16.label = var17
      var17 = temp6.icon
      if not var17 then
        var17 = "hand"
      end
      var16.icon = var17
      var17 = {}
      var17.data = temp6
      var17.index = temp5
      var17.locationIndex = temp11
      var16.args = var17

-- Local function handler

-- Local function handler
      function var17()
        local inner0, inner1
        inner0 = isActive
        inner0 = IsPedInMeleeCombat
        inner1 = cache
        inner1 = inner1.ped
        inner0 = inner0(inner1)
        inner0 = not inner0 and inner0
        return inner0
      end
      var16.canInteract = var17
      var17 = data
      var16.onSelect = var17
      var17 = {}
      var18 = locale
      var19 = "cancel"
      var18 = var18(var19)
      var17.label = var18
      var17.icon = "circle-xmark"

-- Local function handler

-- Local function handler
      function var18()
        local inner0, inner1
        inner0 = isActive
        return inner0
      end
      var17.canInteract = var18
      var18 = config
      var17.onSelect = var18
      var15[1] = var16
      var15[2] = var17
      var14.options = var15
      var15 = temp6.target
      var13 = var13(var14, var15)
      var14 = table
      var14 = var14.insert
      var15 = item
      var16 = var13
      var14(var15, var16)
    end
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result()
  local var0, temp1, temp2, temp3, temp4, temp5, temp6
  var0 = ipairs
  temp1 = item
  var0, temp1, temp2, temp3 = var0(temp1)
  for temp4, temp5 in var0, temp1, temp2, temp3 do
    temp6 = temp5.remove
    temp6()
  end
  var0 = table
  var0 = var0.wipe
  temp1 = item
  var0(temp1)
end
callback = {}
callback.create = player
callback.clear = result
Collecting = callback
