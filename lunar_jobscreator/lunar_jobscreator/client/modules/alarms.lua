-- ════════════════════════════════════════════════════════════
-- alarms.lua
-- Alarm system - visual/audio alerts
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function config(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17, var18
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
        var17 = label
        if not var17 then
          var17 = locale
          var18 = "trigger_alarm"
          var17 = var17(var18)
        end
        var16.label = var17
        var16.icon = "bell"
        var17 = data
        var16.onSelect = var17
        var17 = {}
        var18 = param1.name
        var17.job = var18
        var17.index = temp5
        var17.locationIndex = temp11
        var16.args = var17
        var15[1] = var16
        var14.options = var15
        var15 = temp6.target
        var13 = var13(var14, var15)
        var14 = table
        var14 = var14.insert
        var15 = isActive
        var16 = var13
        var14(var15, var16)
      end
    end
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item()
  local var0, temp1, temp2, temp3, temp4, temp5, temp6
  var0 = ipairs
  temp1 = isActive
  var0, temp1, temp2, temp3 = var0(temp1)
  for temp4, temp5 in var0, temp1, temp2, temp3 do
    temp6 = temp5.remove
    temp6()
  end
  var0 = table
  var0 = var0.wipe
  temp1 = isActive
  var0(temp1)
end
player = {}

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result()
  local var0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17, var18, var19, var20, L21_2, L22_2, L23_2, L24_2
  var0 = ipairs
  temp1 = player
  var0, temp1, temp2, temp3 = var0(temp1)
  for temp4, temp5 in var0, temp1, temp2, temp3 do
    temp6 = temp5.remove
    temp6()
  end
  var0 = table
  var0 = var0.wipe
  temp1 = player
  var0(temp1)
  var0 = GetJobs
  var0 = var0()
  temp1 = pairs
  temp2 = var0
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = temp6.alarms
    if temp7 then
      temp7 = ipairs
      temp8 = temp6.alarms
      temp7, temp8, temp9, temp10 = temp7(temp8)
      for temp11, temp12 in temp7, temp8, temp9, temp10 do
        var13 = temp12.global
        if var13 then
          var13 = ipairs
          var14 = temp12.locations
          var13, var14, var15, var16 = var13(var14)
          for var17, var18 in var13, var14, var15, var16 do
            var19 = Utils
            var19 = var19.createInteractionPoint
            var20 = {}
            var20.coords = var18
            L21_2 = temp12.radius
            if not L21_2 then
              L21_2 = Config
              L21_2 = L21_2.defaultRadius
            end
            var20.radius = L21_2
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
            L23_2.locationIndex = var17
            L22_2.args = L23_2
            L21_2[1] = L22_2
            var20.options = L21_2
            var19 = var19(var20)
            var20 = table
            var20 = var20.insert
            L21_2 = player
            L22_2 = var19
            var20(L21_2, L22_2)
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
