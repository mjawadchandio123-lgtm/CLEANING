-- ════════════════════════════════════════════════════════════
-- teleport.lua
-- Teleport system - fast travel
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function config(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10
  temp3 = param1
  temp1 = temp3.job
  temp2 = temp3.index
  temp3 = temp1.teleports
  temp3 = temp3[temp2]
  temp4 = nil
  temp5 = data
  temp6 = temp3.to
  temp6 = temp6.coords
  temp7 = temp3.disableAnim
  temp5(temp6, temp7)
  temp5 = TriggerServerEvent
  temp6 = "lunar_unijob:teleport"
  temp7 = temp2
  temp5(temp6, temp7)
  temp5 = Utils
  temp5 = temp5.createInteractionPoint
  temp6 = {}
  temp7 = temp3.to
  temp7 = temp7.target
  temp6.coords = temp7
  temp7 = temp3.radius
  if not temp7 then
    temp7 = Config
    temp7 = temp7.defaultRadius
  end
  temp6.radius = temp7
  temp7 = {}
  temp8 = {}
  temp9 = temp3.to
  temp9 = temp9.label
  if not temp9 then
    temp9 = locale
    temp10 = "go_outside"
    temp9 = temp9(temp10)
  end
  temp8.label = temp9
  temp9 = temp3.to
  temp9 = temp9.icon
  if not temp9 then
    temp9 = "door-open"
  end
  temp8.icon = temp9

-- Local function handler

-- Local function handler
  function temp9()
    local L0_3, L1_3, L2_3
    L0_3 = data
    L1_3 = temp3.from
    L1_3 = L1_3.coords
    L2_3 = temp3.disableAnim
    L0_3(L1_3, L2_3)
    L0_3 = TriggerServerEvent
    L1_3 = "lunar_unijob:exitTeleport"
    L0_3(L1_3)
    L0_3 = temp4
    if L0_3 then
      L0_3 = temp4.remove
      L0_3()
    end
  end
  temp8.onSelect = temp9
  temp7[1] = temp8
  temp6.options = temp7
  temp5 = temp5(temp6)
  temp4 = temp5
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12
  temp1 = param1.teleports
  if not temp1 then
    return
  end
  temp1 = ipairs
  temp2 = param1.teleports
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = Utils
    temp7 = temp7.createInteractionPoint
    temp8 = {}
    temp9 = temp6.from
    temp9 = temp9.target
    temp8.coords = temp9
    temp9 = temp6.radius
    if not temp9 then
      temp9 = Config
      temp9 = temp9.defaultRadius
    end
    temp8.radius = temp9
    temp9 = {}
    temp10 = {}
    temp11 = temp6.from
    temp11 = temp11.label
    if not temp11 then
      temp11 = locale
      temp12 = "go_inside"
      temp11 = temp11(temp12)
    end
    temp10.label = temp11
    temp11 = temp6.from
    temp11 = temp11.icon
    if not temp11 then
      temp11 = "door-open"
    end
    temp10.icon = temp11
    temp11 = config
    temp10.onSelect = temp11
    temp11 = {}
    temp11.job = param1
    temp11.index = temp5
    temp10.args = temp11

-- Local function handler

-- Local function handler
    function temp11()
      local L0_3, L1_3
      L0_3 = HasGrade
      L1_3 = temp6.grade
      return L0_3(L1_3)
    end
    temp10.canInteract = temp11
    temp9[1] = temp10
    temp8.options = temp9
    temp9 = temp6.target
    temp7 = temp7(temp8, temp9)
    temp8 = table
    temp8 = temp8.insert
    temp9 = isActive
    temp10 = temp7
    temp8(temp9, temp10)
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player()
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
result = {}
result.create = item
result.clear = player
Teleports = result
