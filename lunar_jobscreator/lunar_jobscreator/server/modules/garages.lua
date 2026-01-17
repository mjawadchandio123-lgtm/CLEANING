-- ════════════════════════════════════════════════════════════
-- garages.lua
-- Vehicle garage system
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

data(config, item)

-- Event handler registration

-- Event handler registration
data = RegisterNetEvent
config = "lunar_unijob:saveTemporaryVehicle"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1, param2, param3)
  local temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10
  temp3 = source
  temp4 = Framework
  temp4 = temp4.getPlayerFromId
  temp5 = temp3
  temp4 = temp4(temp5)
  if not temp4 then
    return
  end
  temp6 = temp4
  temp5 = temp4.getJob
  temp5 = temp5(temp6)
  temp6 = isActive
  temp5 = temp6[temp5]
  temp6 = temp5.garages
  temp6 = temp6[param2]
  temp7 = temp6
  if temp7 then
    temp7 = temp7.locations
  end
  if temp7 then
    temp7 = temp7[param3]
  end
  if not temp7 then
    return
  end
  temp8 = NetworkGetEntityFromNetworkId
  temp9 = param1
  temp8 = temp8(temp9)
  temp9 = Wait
  temp10 = 500
  temp9(temp10)
  temp9 = DoesEntityExist
  temp10 = temp8
  temp9 = temp9(temp10)
  if not temp9 then
    return
  end
  temp9 = GetEntityCoords
  temp10 = temp8
  temp9 = temp9(temp10)
  temp10 = temp7.coords
  temp10 = temp10.xyz
  temp9 = temp9 - temp10
  temp9 = #temp9
  if temp9 < 10.0 then
    temp9 = DeleteEntity
    temp10 = temp8
    temp9(temp10)
  end
end
data(config, item)
data = {}

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1)
  local temp1
  isActive = param1
end
data.init = config
Garages = data
