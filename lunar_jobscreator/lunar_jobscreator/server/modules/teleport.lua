-- ════════════════════════════════════════════════════════════
-- teleport.lua
-- Teleport validation
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

  temp4 = isActive
  temp4 = temp4[temp1]
  if not temp4 then
    temp4 = Utils
    temp4 = temp4.distanceCheck
    temp5 = temp1
    temp6 = temp3.from
    temp6 = temp6.coords
    temp7 = 10.0
    temp4 = temp4(temp5, temp6, temp7)
    if temp4 then
      goto lbl_30
    end
  end
  do return end
  ::lbl_30::
  temp4 = isActive
  temp4[temp1] = true
  temp4 = temp3.routingBucket
  if temp4 then
    temp4 = SetPlayerRoutingBucket
    temp5 = temp1
    temp6 = temp3.routingBucket
    temp4(temp5, temp6)
  end
end
data(config, item)

-- Event handler registration

-- Event handler registration
data = RegisterNetEvent
config = "lunar_unijob:exitTeleport"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item()
  local var0, temp1, temp2, temp3
  var0 = source
  temp1 = isActive
  temp1 = temp1[var0]
  if temp1 then
    temp1 = isActive
    temp1[var0] = nil
    temp1 = SetPlayerRoutingBucket
    temp2 = var0
    temp3 = 0
    temp1(temp2, temp3)
  end
end
data(config, item)
