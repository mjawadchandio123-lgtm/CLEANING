-- ════════════════════════════════════════════════════════════
-- advanced_collecting.lua
-- Advanced collection - server logic
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

  temp3 = data
  temp2, temp3, temp4, temp5 = temp2(temp3)
  for temp6, temp7 in temp2, temp3, temp4, temp5 do
    temp8 = #temp1
    temp8 = temp8 + 1
    temp9 = {}
    temp10 = temp7.spawned
    temp9.spawned = temp10
    temp10 = temp7.job
    temp10 = temp10.name
    temp9.jobName = temp10
    temp10 = temp7.index
    temp9.index = temp10
    temp10 = temp7.locationIndex
    temp9.locationIndex = temp10
    temp1[temp8] = temp9
  end
  return temp1
end
item(player, result)

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1, param2)
  local temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11
  temp2 = 1
  temp3 = #param2
  temp4 = 1
  for temp5 = temp2, temp3, temp4 do
    temp6 = param2[temp5]
    temp8 = param1
    temp7 = param1.canCarryItem
    temp9 = temp6.name
    temp10 = type
    temp11 = temp6.count
    temp10 = temp10(temp11)
    if "table" == temp10 then
      temp10 = temp6.count
      temp10 = temp10.max
      if temp10 then
        goto lbl_18
      end
    end
    temp10 = temp6.count
    ::lbl_18::
    temp7 = temp7(temp8, temp9, temp10)
    if not temp7 then
      temp7 = false
      return temp7
    end
  end
  temp2 = true
  return temp2
end
player = lib
player = player.callback
player = player.register
result = "lunar_unijob:harvestCollectable"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function callback(param1, param2, param3)
  local temp3, temp4, temp5, temp6, temp7, temp8, temp9
  temp3 = data
  temp3 = temp3[param2]
  temp4 = Framework
  temp4 = temp4.getPlayerFromId
  temp5 = param1
  temp4 = temp4(temp5)
  temp5 = temp3.spawned
  temp5 = temp5[param3]
  if temp3 and temp5 and temp4 then
    temp7 = param2
    temp6 = param2.find
    temp9 = temp4
    temp8 = temp4.getJob
    temp8, temp9 = temp8(temp9)
    temp6 = temp6(temp7, temp8, temp9)
    if temp6 then
      temp6 = temp5.xy
      temp7 = GetEntityCoords
      temp8 = GetPlayerPed
      temp9 = param1
      temp8, temp9 = temp8(temp9)
      temp7 = temp7(temp8, temp9)
      temp7 = temp7.xy
      temp6 = temp6 - temp7
      temp6 = #temp6
      if not (temp6 > 10.0) then
        temp6 = item
        temp7 = temp4
        temp8 = temp3.data
        temp8 = temp8.items
        temp6 = temp6(temp7, temp8)
        if temp6 then
          goto lbl_41
        end
      end
    end
  end
  do return end
  ::lbl_41::
  temp6 = SetTimeout
  temp7 = temp3.data
  temp7 = temp7.duration

-- Local function handler

-- Local function handler
  function temp8()
    local inner0, inner1, inner2, inner3, inner4, inner5, inner6, inner7, inner8, inner9
    inner1 = param2
    inner0 = data
    inner0 = inner0[inner1]
    inner0 = inner0.spawned
    inner1 = param3
    inner0 = inner0[inner1]
    if inner0 then
      inner0 = item
      inner1 = temp4
      inner2 = temp3.data
      inner2 = inner2.items
      inner0 = inner0(inner1, inner2)
      if inner0 then
        goto lbl_17
      end
    end
    do return end
    ::lbl_17::
    inner1 = param2
    inner0 = data
    inner0 = inner0[inner1]
    inner0 = inner0.spawned
    inner1 = param3
    inner0[inner1] = nil
    inner0 = 1
    inner1 = temp3.data
    inner1 = inner1.items
    inner1 = #inner1
    inner2 = 1
    for inner3 = inner0, inner1, inner2 do
      inner4 = temp3.data
      inner4 = inner4.items
      inner4 = inner4[inner3]
      inner5 = type
      inner6 = inner4.count
      inner5 = inner5(inner6)
      if "number" == inner5 then
        inner5 = inner4.count
        if inner5 then
          goto lbl_47
        end
      end
      inner5 = math
      inner5 = inner5.random
      inner6 = inner4.count
      inner6 = inner6.min
      inner7 = inner4.count
      inner7 = inner7.max
      inner5 = inner5(inner6, inner7)
      ::lbl_47::
      inner6 = temp4
      inner7 = inner6
      inner6 = inner6.addItem
      inner8 = inner4.name
      inner9 = inner5
      inner6(inner7, inner8, inner9)
    end
    inner0 = TriggerClientEvent
    inner1 = "lunar_unijob:removeCollectable"
    inner2 = -1
    inner3 = param2
    inner4 = param3
    inner0(inner1, inner2, inner3, inner4)
  end
  temp6(temp7, temp8)
  temp6 = true
  return temp6
end
player(result, callback)

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17, var18
  temp1 = {}
  temp2 = pairs
  temp3 = data
  temp2, temp3, temp4, temp5 = temp2(temp3)
  for temp6, temp7 in temp2, temp3, temp4, temp5 do
    temp9 = temp6
    temp8 = temp6.find
    temp10 = param1.name
    temp8 = temp8(temp9, temp10)
    if temp8 then
      temp8 = ClearInterval
      temp9 = temp7.interval
      temp8(temp9)
      temp8 = data
      temp8[temp6] = nil
      temp8 = #temp1
      temp8 = temp8 + 1
      temp1[temp8] = temp6
    end
  end
  temp2 = #temp1
  if temp2 > 0 then
    temp2 = TriggerClientEvent
    temp3 = "lunar_unijob:clearAdvancedCollecting"
    temp4 = -1
    temp5 = temp1
    temp2(temp3, temp4, temp5)
  end
  temp2 = param1.advancedCollecting
  if not temp2 then
    return
  end
  temp2 = ipairs
  temp3 = param1.advancedCollecting
  temp2, temp3, temp4, temp5 = temp2(temp3)
  for temp6, temp7 in temp2, temp3, temp4, temp5 do
    temp8 = ipairs
    temp9 = temp7.locations
    temp8, temp9, temp10, temp11 = temp8(temp9)
    for temp12, var13 in temp8, temp9, temp10, temp11 do
      var14 = "%s_%s_%s"
      var15 = var14
      var14 = var14.format
      var16 = param1.name
      var17 = temp6
      var18 = temp12
      var14 = var14(var15, var16, var17, var18)
      var15 = data
      var16 = {}
      var17 = {}
      var16.spawned = var17
      var16.data = temp7
      var16.index = temp6
      var16.locationIndex = temp12
      var16.job = param1
      var15[var14] = var16
      var15 = data
      var15 = var15[var14]
      var16 = SetInterval

-- Local function handler

-- Local function handler
      function var17()
        local inner0, inner1, inner2, inner3, inner4, inner5, inner6, inner7, inner8, inner9, inner10, inner11, inner12, L13_3
        inner1 = var14
        inner0 = data
        inner0 = inner0[inner1]
        inner0 = inner0.spawned
        inner1 = var13.maxSpawned
        if inner1 then
          inner1 = Utils
          inner1 = inner1.getTableSize
          inner2 = inner0
          inner1 = inner1(inner2)
          inner2 = var13.maxSpawned
          if inner1 == inner2 then
            goto lbl_18
          end
        end
        inner1 = var13.coords
        ::lbl_18::
        if not inner1 then
          return
        end
        inner1 = nil
        inner2 = false
        inner3 = 0
        inner4 = 20
        while not inner2 and inner3 < inner4 do
          inner3 = inner3 + 1
          inner5 = var13.radius
          inner6 = vector3
          inner7 = var13.coords
          inner7 = inner7.x
          inner8 = math
          inner8 = inner8.random
          inner8 = inner8()
          inner9 = inner5 * 2
          inner8 = inner8 * inner9
          inner8 = inner8 - inner5
          inner7 = inner7 + inner8
          inner8 = var13.coords
          inner8 = inner8.y
          inner9 = math
          inner9 = inner9.random
          inner9 = inner9()
          inner10 = inner5 * 2
          inner9 = inner9 * inner10
          inner9 = inner9 - inner5
          inner8 = inner8 + inner9
          inner9 = var13.coords
          inner9 = inner9.z
          inner6 = inner6(inner7, inner8, inner9)
          inner1 = inner6
          inner2 = true
          inner6 = pairs
          inner7 = inner0
          inner6, inner7, inner8, inner9 = inner6(inner7)
          for inner10, inner11 in inner6, inner7, inner8, inner9 do
            inner12 = inner1.xy
            L13_3 = inner11.xy
            inner12 = inner12 - L13_3
            inner12 = #inner12
            if inner12 < 1.0 then
              inner2 = false
              break
            end
          end
        end
        if not inner2 then
          return
        end
        inner5 = #inner0
        inner5 = inner5 + 1
        inner6 = TriggerClientEvent
        inner7 = "lunar_unijob:spawnCollectable"
        inner8 = -1
        inner9 = param1.name
        inner10 = temp6
        inner11 = temp12
        inner12 = inner1
        L13_3 = inner5
        inner6(inner7, inner8, inner9, inner10, inner11, inner12, L13_3)
        inner0[inner5] = inner1
      end
      var18 = var13.interval
      var16 = var16(var17, var18)
      var15.interval = var16
    end
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8
  isActive = param1
  temp1 = pairs
  temp2 = isActive
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = player
    temp8 = temp6
    temp7(temp8)
  end
end
callback = {}
callback.init = result
callback.update = player
AdvancedCollecting = callback
