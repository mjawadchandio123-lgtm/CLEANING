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
    local inner0, inner1
    temp1.valid = false
    inner0 = temp2
    inner1 = temp1
    inner0(inner1)
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
      local inner0, inner1, inner2
      inner0 = GetWorldPositionOfEntityBone
      inner1 = param1.entity
      inner2 = temp1
      return inner0(inner1, inner2)
    end
    param1.getCoords = temp2
  else
    temp1 = param1.offset
    if temp1 then
      temp1 = param1.offset

-- Local function handler

-- Local function handler
      function temp2()
        local inner0, inner1, inner2, inner3, inner4
        inner0 = GetOffsetFromEntityInWorldCoords
        inner1 = param1.entity
        inner2 = temp1.x
        inner3 = temp1.y
        inner4 = temp1.z
        return inner0(inner1, inner2, inner3, inner4)
      end
      param1.getCoords = temp2
    else

-- Local function handler

-- Local function handler
      function temp1()
        local inner0, inner1
        inner0 = GetEntityCoords
        inner1 = param1.entity
        return inner0(inner1)
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
    local inner0, inner1
    param1.valid = false
    inner0 = RemoveEntity
    inner1 = temp1
    inner0(inner1)
  end
  temp2.remove = temp3
  return temp2
end
config.addLocalEntity = item
