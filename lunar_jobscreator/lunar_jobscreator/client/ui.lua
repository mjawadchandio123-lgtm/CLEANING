-- ════════════════════════════════════════════════════════════
-- ui.lua
-- UI/HUD system - display overlays
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function data(param1)
  local temp1, temp2, temp3
  temp1 = UI
  temp1 = temp1.sendMessage
  temp2 = "updateJob"
  temp3 = param1
  temp1(temp2, temp3)
end
isActive.updateJob = data
isActive = UI

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function data(param1)
  local temp1, temp2, temp3
  temp1 = UI
  temp1 = temp1.sendMessage
  temp2 = "removeJob"
  temp3 = param1
  temp1(temp2, temp3)
end
isActive.removeJob = data
isActive = UI

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function data(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8
  temp1 = {}
  temp2 = pairs
  temp3 = param1
  temp2, temp3, temp4, temp5 = temp2(temp3)
  for temp6, temp7 in temp2, temp3, temp4, temp5 do
    temp8 = #temp1
    temp8 = temp8 + 1
    temp1[temp8] = temp7
  end
  temp2 = UI
  temp2 = temp2.sendMessage
  temp3 = "updateJobs"
  temp4 = temp1
  temp2(temp3, temp4)
end
isActive.updateJobs = data
isActive = RegisterNUICallback
data = "getJobs"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1, param2)
  local temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10
  temp2 = GetJobs
  temp2 = temp2()
  temp3 = {}
  temp4 = pairs
  temp5 = temp2
  temp4, temp5, temp6, temp7 = temp4(temp5)
  for temp8, temp9 in temp4, temp5, temp6, temp7 do
    temp10 = #temp3
    temp10 = temp10 + 1
    temp3[temp10] = temp9
  end
  temp4 = param2
  temp5 = temp3
  temp4(temp5)
end
isActive(data, config)
isActive = RegisterNUICallback
data = "createJob"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1, param2)
  local temp2, temp3, temp4
  temp2 = TriggerServerEvent
  temp3 = "lunar_unijob:createJob"
  temp4 = param1
  temp2(temp3, temp4)
  temp2 = param2
  temp3 = {}
  temp2(temp3)
end
isActive(data, config)
isActive = RegisterNUICallback
data = "updateJobField"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1, param2)
  local temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9
  temp5 = param1
  temp2 = temp5.name
  temp3 = temp5.field
  temp4 = temp5.data
  temp5 = TriggerServerEvent
  temp6 = "lunar_unijob:updateJobField"
  temp7 = temp2
  temp8 = temp3
  temp9 = temp4
  temp5(temp6, temp7, temp8, temp9)
  temp5 = param2
  temp6 = {}
  temp5(temp6)
end
isActive(data, config)
isActive = RegisterNUICallback
data = "updateJob"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1, param2)
  local temp2, temp3, temp4
  temp2 = TriggerServerEvent
  temp3 = "lunar_unijob:updateJob"
  temp4 = param1
  temp2(temp3, temp4)
  temp2 = param2
  temp3 = {}
  temp2(temp3)
end
isActive(data, config)
isActive = RegisterNUICallback
data = "removeJob"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1, param2)
  local temp2, temp3, temp4
  temp2 = TriggerServerEvent
  temp3 = "lunar_unijob:removeJob"
  temp4 = param1
  temp2(temp3, temp4)
  temp2 = param2
  temp3 = {}
  temp2(temp3)
end
isActive(data, config)
isActive = RegisterNUICallback
data = "hideFrame"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1, param2)
  local temp2, temp3, temp4
  temp2 = SetNuiFocus
  temp3 = false
  temp4 = false
  temp2(temp3, temp4)
  temp2 = param2
  temp3 = {}
  temp2(temp3)
end
isActive(data, config)
isActive = RegisterNUICallback
data = "updateWebhookData"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1, param2)
  local temp2, temp3, temp4
  temp2 = TriggerServerEvent
  temp3 = "lunar_unijob:updateWebhookData"
  temp4 = param1
  temp2(temp3, temp4)
  temp2 = param2
  temp3 = {}
  temp2(temp3)
end
isActive(data, config)
isActive = RegisterNUICallback
data = "updateJobWebhook"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1, param2)
  local temp2, temp3, temp4, temp5
  temp2 = TriggerServerEvent
  temp3 = "lunar_unijob:updateJobWebhook"
  temp4 = param1.name
  temp5 = param1.url
  temp2(temp3, temp4, temp5)
  temp2 = param2
  temp3 = {}
  temp2(temp3)
end
isActive(data, config)
isActive = nil
data = lib
data = data.callback
config = "lunar_unijob:getHistory"
item = false

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1
  isActive = param1
end
data(config, item, player)

-- Event handler registration

-- Event handler registration
data = RegisterNetEvent
config = "lunar_unijob:updateHistory"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2, temp3
  isActive = param1
  temp1 = UI
  temp1 = temp1.sendMessage
  temp2 = "updateHistory"
  temp3 = param1
  temp1(temp2, temp3)
end
data(config, item)
data = RegisterNUICallback
config = "getHistory"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1, param2)
  local temp2, temp3
  while true do
    temp2 = isActive
    if temp2 then
      break
    end
    temp2 = Wait
    temp3 = 0
    temp2(temp3)
  end
  temp2 = param2
  temp3 = isActive
  temp2(temp3)
end
data(config, item)
data = nil
config = lib
config = config.callback
item = "lunar_unijob:getStats"
player = false

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result(param1)
  local temp1
  data = param1
end
config(item, player, result)
config = RegisterNUICallback
item = "getStats"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1, param2)
  local temp2, temp3
  while true do
    temp2 = data
    if temp2 then
      break
    end
    temp2 = Wait
    temp3 = 0
    temp2(temp3)
  end
  temp2 = param2
  temp3 = data
  temp2(temp3)
end
config(item, player)

-- Event handler registration

-- Event handler registration
config = RegisterNetEvent
item = "lunar_unijob:updateStats"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2, temp3
  data = param1
  temp1 = UI
  temp1 = temp1.sendMessage
  temp2 = "updateStats"
  temp3 = param1
  temp1(temp2, temp3)
end
config(item, player)
config = RegisterNUICallback
item = "getFramework"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1, param2)
  local temp2, temp3
  temp2 = param2
  temp3 = Framework
  temp3 = temp3.name
  temp2(temp3)
end
config(item, player)
config = RegisterNUICallback
item = "getLanguage"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1, param2)
  local temp2, temp3
  temp2 = param2
  temp3 = Config
  temp3 = temp3.uiLanguage
  temp2(temp3)
end
config(item, player)
config = RegisterNUICallback
item = "getProfile"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1, param2)
  local temp2, temp3, temp4, temp5
  temp2 = param2
  temp3 = {}
  temp4 = cache
  temp4 = temp4.serverId
  temp3.serverId = temp4
  temp4 = GetPlayerName
  temp5 = cache
  temp5 = temp5.playerId
  temp4 = temp4(temp5)
  temp3.username = temp4
  temp3.avatarUrl = nil
  temp2(temp3)
end
config(item, player)
config = false
item = RegisterCommand
player = Config
player = player.command
if not player then
  player = "jobscreator"
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result()
  local var0, temp1, temp2, temp3, temp4
  var0 = lib
  var0 = var0.callback
  var0 = var0.await
  temp1 = "lunar_unijob:getWebhookData"
  temp2 = false
  var0 = var0(temp1, temp2)
  if not var0 then
    return
  end
  temp1 = config
  if not temp1 then
    temp1 = lib
    temp1 = temp1.callback
    temp2 = "lunar_unijob:getDiscordIcon"
    temp3 = false

-- Local function handler

-- Local function handler
    function temp4(A0_3)
      local inner1, inner2, inner3, inner4, inner5
      inner1 = UI
      inner1 = inner1.sendMessage
      inner2 = "updateProfile"
      inner3 = {}
      inner4 = cache
      inner4 = inner4.serverId
      inner3.serverId = inner4
      inner4 = GetPlayerName
      inner5 = cache
      inner5 = inner5.playerId
      inner4 = inner4(inner5)
      inner3.username = inner4
      inner3.avatarUrl = A0_3
      inner1(inner2, inner3)
    end
    temp1(temp2, temp3, temp4)
    temp1 = true
    config = temp1
  end
  temp1 = UI
  temp1 = temp1.sendMessage
  temp2 = "updateWebhookData"
  temp3 = var0
  temp1(temp2, temp3)
  temp1 = UI
  temp1 = temp1.sendMessage
  temp2 = "open"
  temp1(temp2)
  temp1 = SetNuiFocus
  temp2 = true
  temp3 = true
  temp1(temp2, temp3)
end
item(player, result)
item = RegisterCommand
player = "edit"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result(param1, param2, param3)
  local temp3, temp4, temp5, temp6, temp7, temp8
  temp3 = lib
  temp3 = temp3.callback
  temp3 = temp3.await
  temp4 = "lunar_unijob:getWebhookData"
  temp5 = false
  temp3 = temp3(temp4, temp5)
  if not temp3 then
    return
  end
  temp4 = param2[1]
  temp5 = GetJobs
  temp5 = temp5()
  temp6 = temp5[temp4]
  if not temp6 then
    temp6 = LR
    temp6 = temp6.notify
    temp7 = locale
    temp8 = "invalid_job_name"
    temp7 = temp7(temp8)
    temp8 = "error"
    temp6(temp7, temp8)
    return
  end
  temp6 = UI
  temp6 = temp6.sendMessage
  temp7 = "updateWebhookData"
  temp8 = temp3
  temp6(temp7, temp8)
  temp6 = UI
  temp6 = temp6.sendMessage
  temp7 = "openEditJob"
  temp8 = temp4
  temp6(temp7, temp8)
  temp6 = UI
  temp6 = temp6.sendMessage
  temp7 = "open"
  temp6(temp7)
  temp6 = SetNuiFocus
  temp7 = true
  temp8 = true
  temp6(temp7, temp8)
end
item(player, result)
item = RegisterNUICallback
player = "teleport"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result(param1, param2)
  local temp2, temp3, temp4, temp5, temp6, temp7
  temp2 = param1
  temp3 = RequestCollisionAtCoord
  temp4 = temp2.x
  temp5 = temp2.y
  temp6 = temp2.z
  temp3(temp4, temp5, temp6)
  temp3 = Wait
  temp4 = 500
  temp3(temp4)
  temp3 = SetEntityCoords
  temp4 = cache
  temp4 = temp4.ped
  temp5 = temp2.x
  temp6 = temp2.y
  temp7 = temp2.z
  temp7 = temp7 + 1.0
  temp3(temp4, temp5, temp6, temp7)
  temp3 = temp2.w
  if temp3 then
    temp3 = SetEntityHeading
    temp4 = cache
    temp4 = temp4.ped
    temp5 = temp2.w
    temp3(temp4, temp5)
  end
  temp3 = param2
  temp4 = {}
  temp3(temp4)
end
item(player, result)
