-- ════════════════════════════════════════════════════════════
-- api.lua
-- Prompts API - context menu
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function data(param1)
  local temp1, temp2, temp3
  temp1 = lib
  temp1 = temp1.points
  temp1 = temp1.new
  temp2 = param1
  temp1 = temp1(temp2)
  temp1.valid = true
  temp2 = temp1.remove

-- Local function handler

-- Local function handler
  function temp3()
    local L0_3, L1_3
    temp1.valid = false
    L0_3 = temp2
    L1_3 = temp1
    L0_3(L1_3)
  end
  temp1.remove = temp3
  return temp1
end
config = API

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2
  temp1 = isActive
  temp2 = param1.options
  temp1(temp2)
  temp1 = data
  temp2 = param1
  return temp1(temp2)
end
config.addPoint = item
config = API

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2, temp3
  temp1 = isActive
  temp2 = param1.options
  temp1(temp2)
  param1.valid = true
  temp1 = param1.bone
  if temp1 then
    temp1 = GetPedBoneIndex
    temp2 = param1.entity
    temp3 = param1.bone
    temp1 = temp1(temp2, temp3)

-- Local function handler

-- Local function handler
    function temp2()
      local L0_3, L1_3, L2_3
      L0_3 = GetWorldPositionOfEntityBone
      L1_3 = param1.entity
      L2_3 = temp1
      return L0_3(L1_3, L2_3)
    end
    param1.getCoords = temp2
  else
    temp1 = param1.offset
    if temp1 then
      temp1 = param1.offset

-- Local function handler

-- Local function handler
      function temp2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = GetOffsetFromEntityInWorldCoords
        L1_3 = param1.entity
        L2_3 = temp1.x
        L3_3 = temp1.y
        L4_3 = temp1.z
        return L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      param1.getCoords = temp2
    else

-- Local function handler

-- Local function handler
      function temp1()
        local L0_3, L1_3
        L0_3 = GetEntityCoords
        L1_3 = param1.entity
        return L0_3(L1_3)
      end
      param1.getCoords = temp1
    end
  end
  temp1 = AddEntity
  temp2 = param1
  temp1 = temp1(temp2)
  temp2 = {}

-- Local function handler

-- Local function handler
  function temp3()
    local L0_3, L1_3
    param1.valid = false
    L0_3 = RemoveEntity
    L1_3 = temp1
    L0_3(L1_3)
  end
  temp2.remove = temp3
  return temp2
end
config.addLocalEntity = item
