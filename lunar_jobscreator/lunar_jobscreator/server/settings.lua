-- ════════════════════════════════════════════════════════════
-- settings.lua
-- Server settings
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

data.playerActions = config
config = {}
config.putInsideVehicle = false
config.takeOutOfVehicle = false
config.hijack = false
config.repair = false
config.clean = false
config.impound = false
data.vehicleActions = config
config = {}
config.steal = 3000
config.revive = 10000
config.heal = 5000
config.hijack = 1000
config.repair = 10000
config.clean = 10000
config.impound = 10000
data.durations = config

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config()
  local var0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10
  var0 = {}
  temp1 = pairs
  temp2 = Settings
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = #var0
    temp7 = temp7 + 1
    temp8 = {}
    temp9 = json
    temp9 = temp9.encode
    temp10 = temp6
    temp9 = temp9(temp10)
    temp10 = temp5
    temp8[1] = temp9
    temp8[2] = temp10
    var0[temp7] = temp8
  end
  temp1 = MySQL
  temp1 = temp1.prepare
  temp1 = temp1.await
  temp2 = "UPDATE lunar_jobscreator_settings SET `value` = ? WHERE `key` = ?"
  temp3 = var0
  temp1(temp2, temp3)
end
item = MySQL
item = item.ready

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player()
  local var0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11
  var0 = Wait
  temp1 = 1000
  var0(temp1)
  var0 = pairs
  temp1 = data
  var0, temp1, temp2, temp3 = var0(temp1)
  for temp4, temp5 in var0, temp1, temp2, temp3 do
    temp6 = Settings
    temp6[temp4] = temp5
    temp6 = MySQL
    temp6 = temp6.insert
    temp6 = temp6.await
    temp7 = "INSERT IGNORE INTO lunar_jobscreator_settings (`key`, `value`) VALUES (?, ?)"
    temp8 = {}
    temp9 = temp4
    temp10 = json
    temp10 = temp10.encode
    temp11 = temp5
    temp10, temp11 = temp10(temp11)
    temp8[1] = temp9
    temp8[2] = temp10
    temp8[3] = temp11
    temp6(temp7, temp8)
  end
  var0 = MySQL
  var0 = var0.query
  var0 = var0.await
  temp1 = "SELECT * FROM lunar_jobscreator_settings"
  var0 = var0(temp1)
  temp1 = 1
  temp2 = #var0
  temp3 = 1
  for temp4 = temp1, temp2, temp3 do
    temp5 = var0[temp4]
    temp6 = Settings
    temp7 = temp5.key
    temp8 = json
    temp8 = temp8.decode
    temp9 = temp5.value
    temp8 = temp8(temp9)
    temp6[temp7] = temp8
  end
  temp1 = true
  isActive = temp1
end
item(player)

-- Event handler registration

-- Event handler registration
item = RegisterNetEvent
player = "lunar_unijob:updateSettings"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6
  temp1 = source
  temp2 = Framework
  temp2 = temp2.getPlayerFromId
  temp3 = temp1
  temp2 = temp2(temp3)
  if temp2 then
    temp3 = IsPlayerAdmin
    temp4 = temp2.source
    temp3 = temp3(temp4)
    if temp3 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  Settings = param1
  temp3 = TriggerClientEvent
  temp4 = "lunar_unijob:updateSettings"
  temp5 = -1
  temp6 = param1
  temp3(temp4, temp5, temp6)
  temp3 = config
  temp3()
end
item(player, result)
item = lib
item = item.callback
item = item.register
player = "lunar_unijob:getSettings"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result()
  local var0, temp1
  while true do
    var0 = isActive
    if var0 then
      break
    end
    var0 = Wait
    temp1 = 100
    var0(temp1)
  end
  var0 = Settings
  return var0
end
item(player, result)
