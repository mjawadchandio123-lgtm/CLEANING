-- ════════════════════════════════════════════════════════════
-- alarms.lua
-- Alarm system - visual/audio alerts
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function config(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  temp1 = param1.alarms
  if not temp1 then
    return
  end
  temp1 = ipairs
  temp2 = param1.alarms
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = temp6.global
    if not temp7 then
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
        L17_2 = label
        if not L17_2 then
          L17_2 = locale
          L18_2 = "trigger_alarm"
          L17_2 = L17_2(L18_2)
        end
        L16_2.label = L17_2
        L16_2.icon = "bell"
        L17_2 = data
        L16_2.onSelect = L17_2
        L17_2 = {}
        L18_2 = param1.name
        L17_2.job = L18_2
        L17_2.index = temp5
        L17_2.locationIndex = temp11
        L16_2.args = L17_2
        L15_2[1] = L16_2
        L14_2.options = L15_2
        L15_2 = temp6.target
        L13_2 = L13_2(L14_2, L15_2)
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = isActive
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
    end
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item()
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6
  L0_2 = ipairs
  temp1 = isActive
  L0_2, temp1, temp2, temp3 = L0_2(temp1)
  for temp4, temp5 in L0_2, temp1, temp2, temp3 do
    temp6 = temp5.remove
    temp6()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  temp1 = isActive
  L0_2(temp1)
end
player = {}

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result()
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L0_2 = ipairs
  temp1 = player
  L0_2, temp1, temp2, temp3 = L0_2(temp1)
  for temp4, temp5 in L0_2, temp1, temp2, temp3 do
    temp6 = temp5.remove
    temp6()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  temp1 = player
  L0_2(temp1)
  L0_2 = GetJobs
  L0_2 = L0_2()
  temp1 = pairs
  temp2 = L0_2
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = temp6.alarms
    if temp7 then
      temp7 = ipairs
      temp8 = temp6.alarms
      temp7, temp8, temp9, temp10 = temp7(temp8)
      for temp11, temp12 in temp7, temp8, temp9, temp10 do
        L13_2 = temp12.global
        if L13_2 then
          L13_2 = ipairs
          L14_2 = temp12.locations
          L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
          for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
            L19_2 = Utils
            L19_2 = L19_2.createInteractionPoint
            L20_2 = {}
            L20_2.coords = L18_2
            L21_2 = temp12.radius
            if not L21_2 then
              L21_2 = Config
              L21_2 = L21_2.defaultRadius
            end
            L20_2.radius = L21_2
            L21_2 = {}
            L22_2 = {}
            L23_2 = temp12.label
            if not L23_2 then
              L23_2 = locale
              L24_2 = "trigger_alarm"
              L23_2 = L23_2(L24_2)
            end
            L22_2.label = L23_2
            L22_2.icon = "bell"
            L23_2 = data
            L22_2.onSelect = L23_2
            L23_2 = {}
            L24_2 = temp6.name
            L23_2.job = L24_2
            L23_2.index = temp11
            L23_2.locationIndex = L17_2
            L22_2.args = L23_2
            L21_2[1] = L22_2
            L20_2.options = L21_2
            L19_2 = L19_2(L20_2)
            L20_2 = table
            L20_2 = L20_2.insert
            L21_2 = player
            L22_2 = L19_2
            L20_2(L21_2, L22_2)
          end
        end
      end
    end
  end
end
callback = {}
callback.create = config
callback.clear = item
callback.update = result
Alarms = callback
