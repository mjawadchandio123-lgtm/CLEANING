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
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = param2
    L0_3 = data
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.spawned
    L1_3 = param3
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L0_3 = item
      L1_3 = temp4
      L2_3 = temp3.data
      L2_3 = L2_3.items
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        goto lbl_17
      end
    end
    do return end
    ::lbl_17::
    L1_3 = param2
    L0_3 = data
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.spawned
    L1_3 = param3
    L0_3[L1_3] = nil
    L0_3 = 1
    L1_3 = temp3.data
    L1_3 = L1_3.items
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = temp3.data
      L4_3 = L4_3.items
      L4_3 = L4_3[L3_3]
      L5_3 = type
      L6_3 = L4_3.count
      L5_3 = L5_3(L6_3)
      if "number" == L5_3 then
        L5_3 = L4_3.count
        if L5_3 then
          goto lbl_47
        end
      end
      L5_3 = math
      L5_3 = L5_3.random
      L6_3 = L4_3.count
      L6_3 = L6_3.min
      L7_3 = L4_3.count
      L7_3 = L7_3.max
      L5_3 = L5_3(L6_3, L7_3)
      ::lbl_47::
      L6_3 = temp4
      L7_3 = L6_3
      L6_3 = L6_3.addItem
      L8_3 = L4_3.name
      L9_3 = L5_3
      L6_3(L7_3, L8_3, L9_3)
    end
    L0_3 = TriggerClientEvent
    L1_3 = "lunar_unijob:removeCollectable"
    L2_3 = -1
    L3_3 = param2
    L4_3 = param3
    L0_3(L1_3, L2_3, L3_3, L4_3)
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
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
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
    for temp12, L13_2 in temp8, temp9, temp10, temp11 do
      L14_2 = "%s_%s_%s"
      L15_2 = L14_2
      L14_2 = L14_2.format
      L16_2 = param1.name
      L17_2 = temp6
      L18_2 = temp12
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
      L15_2 = data
      L16_2 = {}
      L17_2 = {}
      L16_2.spawned = L17_2
      L16_2.data = temp7
      L16_2.index = temp6
      L16_2.locationIndex = temp12
      L16_2.job = param1
      L15_2[L14_2] = L16_2
      L15_2 = data
      L15_2 = L15_2[L14_2]
      L16_2 = SetInterval

-- Local function handler

-- Local function handler
      function L17_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
        L1_3 = L14_2
        L0_3 = data
        L0_3 = L0_3[L1_3]
        L0_3 = L0_3.spawned
        L1_3 = L13_2.maxSpawned
        if L1_3 then
          L1_3 = Utils
          L1_3 = L1_3.getTableSize
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          L2_3 = L13_2.maxSpawned
          if L1_3 == L2_3 then
            goto lbl_18
          end
        end
        L1_3 = L13_2.coords
        ::lbl_18::
        if not L1_3 then
          return
        end
        L1_3 = nil
        L2_3 = false
        L3_3 = 0
        L4_3 = 20
        while not L2_3 and L3_3 < L4_3 do
          L3_3 = L3_3 + 1
          L5_3 = L13_2.radius
          L6_3 = vector3
          L7_3 = L13_2.coords
          L7_3 = L7_3.x
          L8_3 = math
          L8_3 = L8_3.random
          L8_3 = L8_3()
          L9_3 = L5_3 * 2
          L8_3 = L8_3 * L9_3
          L8_3 = L8_3 - L5_3
          L7_3 = L7_3 + L8_3
          L8_3 = L13_2.coords
          L8_3 = L8_3.y
          L9_3 = math
          L9_3 = L9_3.random
          L9_3 = L9_3()
          L10_3 = L5_3 * 2
          L9_3 = L9_3 * L10_3
          L9_3 = L9_3 - L5_3
          L8_3 = L8_3 + L9_3
          L9_3 = L13_2.coords
          L9_3 = L9_3.z
          L6_3 = L6_3(L7_3, L8_3, L9_3)
          L1_3 = L6_3
          L2_3 = true
          L6_3 = pairs
          L7_3 = L0_3
          L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
          for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
            L12_3 = L1_3.xy
            L13_3 = L11_3.xy
            L12_3 = L12_3 - L13_3
            L12_3 = #L12_3
            if L12_3 < 1.0 then
              L2_3 = false
              break
            end
          end
        end
        if not L2_3 then
          return
        end
        L5_3 = #L0_3
        L5_3 = L5_3 + 1
        L6_3 = TriggerClientEvent
        L7_3 = "lunar_unijob:spawnCollectable"
        L8_3 = -1
        L9_3 = param1.name
        L10_3 = temp6
        L11_3 = temp12
        L12_3 = L1_3
        L13_3 = L5_3
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        L0_3[L5_3] = L1_3
      end
      L18_2 = L13_2.interval
      L16_2 = L16_2(L17_2, L18_2)
      L15_2.interval = L16_2
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
