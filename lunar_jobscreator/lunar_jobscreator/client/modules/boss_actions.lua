-- ════════════════════════════════════════════════════════════
-- boss_actions.lua
-- Boss actions - management commands
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

      L15_2 = isActive
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config()
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
item = {}
item.create = data
item.clear = config
BossActions = item
