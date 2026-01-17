-- ════════════════════════════════════════════════════════════
-- animation_zones.lua
-- Animation zone definitions
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

  temp3 = data
  temp3 = temp3[param2]
  if temp3 then
    temp4 = temp3.occupant
    if not temp4 then
      temp4 = temp3.zone
      temp4 = temp4.global
      if temp4 then
        goto lbl_28
      end
      temp5 = temp2
      temp4 = temp2.getJob
      temp4 = temp4(temp5)
      temp5 = temp3.job
      temp5 = temp5.name
      if temp4 == temp5 then
        goto lbl_28
      end
    end
  end
  temp4 = false
  do return temp4 end
  ::lbl_28::
  temp3.occupant = param1
  temp4 = true
  return temp4
end
config(item, player)

-- Event handler registration

-- Event handler registration
config = RegisterNetEvent
item = "lunar_unijob:stopAnimation"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2
  temp1 = source
  temp2 = data
  temp2 = temp2[param1]
  temp2 = temp2.occupant
  if temp2 == temp1 then
    temp2 = data
    temp2 = temp2[param1]
    temp2.occupant = nil
  end
end
config(item, player)

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16
  temp1 = param1.animationZones
  if not temp1 then
    return
  end
  temp1 = ipairs
  temp2 = param1.animationZones
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = ipairs
    temp8 = temp6.locations
    temp7, temp8, temp9, temp10 = temp7(temp8)
    for temp11 in temp7, temp8, temp9, temp10 do
      temp12 = "%s_%s_%s"
      var13 = temp12
      temp12 = temp12.format
      var14 = param1.name
      var15 = temp5
      var16 = temp11
      temp12 = temp12(var13, var14, var15, var16)
      var13 = data
      var14 = {}
      var14.job = param1
      var14.zone = temp6
      var13[temp12] = var14
    end
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8
  isActive = param1
  temp1 = pairs
  temp2 = isActive
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = config
    temp8 = temp6
    temp7(temp8)
  end
end
player = {}
player.init = item
player.update = config
AnimationZones = player
