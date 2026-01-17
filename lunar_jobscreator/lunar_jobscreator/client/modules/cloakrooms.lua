-- ════════════════════════════════════════════════════════════
-- cloakrooms.lua
-- Cloakroom system - change outfits
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

      var15 = isActive
      var16 = var13
      var14(var15, var16)
    end
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config()
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
item = {}
item.create = data
item.clear = config
Cloakrooms = item
