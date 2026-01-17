-- ════════════════════════════════════════════════════════════
-- history.lua
-- Action history logging
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function player()
  local var0, temp1, temp2, temp3, temp4, temp5
  var0 = Wait
  temp1 = 1000
  var0(temp1)
  var0 = config
  var0 = var0()
  temp1 = var0 - 172800
  temp2 = MySQL
  temp2 = temp2.query
  temp2 = temp2.await
  temp3 = "SELECT * FROM lunar_jobscreator_history WHERE timestamp >= ?"
  temp4 = {}
  temp5 = temp1
  temp4[1] = temp5
  temp2 = temp2(temp3, temp4)
  isActive = temp2
  temp2 = MySQL
  temp2 = temp2.query
  temp2 = temp2.await
  temp3 = "DELETE FROM lunar_jobscreator_history WHERE timestamp < ?"
  temp4 = {}
  temp5 = temp1
  temp4[1] = temp5
  temp2(temp3, temp4)
  temp2 = true
  data = temp2
end
item(player)
item = {}
player = lib
player = player.callback
player = player.register
result = "lunar_unijob:getHistory"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function callback(param1)
  local temp1, temp2
  temp1 = item
  temp1 = temp1[param1]
  if temp1 then
    return
  end
  temp1 = item
  temp1[param1] = true
  while true do
    temp1 = data
    if temp1 then
      break
    end
    temp1 = Wait
    temp2 = 0
    temp1(temp2)
  end
  temp1 = isActive
  return temp1
end
player(result, callback)

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1, param2)
  local temp2, temp3, temp4, temp5, temp6, temp7, temp8
  temp2 = {}
  temp3 = GetPlayerName
  temp4 = param1
  temp3 = temp3(temp4)
  temp2.username = temp3
  temp2.action = param2
  temp3 = config
  temp3 = temp3()
  temp2.timestamp = temp3
  temp3 = isActive
  temp3 = #temp3
  temp4 = temp3 + 1
  temp3 = isActive
  temp3[temp4] = temp2
  temp3 = MySQL
  temp3 = temp3.insert
  temp3 = temp3.await
  temp4 = "INSERT INTO lunar_jobscreator_history (username, action, timestamp) VALUES (?, ?, ?)"
  temp5 = {}
  temp6 = temp2.username
  temp7 = temp2.action
  temp8 = temp2.timestamp
  temp5[1] = temp6
  temp5[2] = temp7
  temp5[3] = temp8
  temp3(temp4, temp5)
  temp3 = TriggerClientEvent
  temp4 = "lunar_unijob:updateHistory"
  temp5 = -1
  temp6 = isActive
  temp3(temp4, temp5, temp6)
end
AddHistoryLog = player
