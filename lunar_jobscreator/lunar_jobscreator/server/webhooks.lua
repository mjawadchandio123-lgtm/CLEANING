-- ════════════════════════════════════════════════════════════
-- webhooks.lua
-- Discord webhook system
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

data.settings = config
data = Webhooks
config = {}
data.jobs = config
data = MySQL
data = data.ready

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config()
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8
  L0_2 = Wait
  temp1 = 1000
  L0_2(temp1)
  L0_2 = MySQL
  L0_2 = L0_2.query
  L0_2 = L0_2.await
  temp1 = "SELECT * FROM lunar_jobscreator_webhooks"
  L0_2 = L0_2(temp1)
  temp1 = 1
  temp2 = #L0_2
  temp3 = 1
  for temp4 = temp1, temp2, temp3 do
    temp5 = L0_2[temp4]
    temp6 = Webhooks
    temp6 = temp6.jobs
    temp7 = temp5.name
    temp8 = temp5.url
    temp6[temp7] = temp8
  end
end
data(config)
data = lib
data = data.callback
data = data.register
config = "lunar_unijob:getWebhookData"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2, temp3
  temp1 = Framework
  temp1 = temp1.getPlayerFromId
  temp2 = param1
  temp1 = temp1(temp2)
  if temp1 then
    temp2 = IsPlayerAdmin
    temp3 = temp1.source
    temp2 = temp2(temp3)
    if temp2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  temp2 = Webhooks
  return temp2
end
data(config, item)

-- Event handler registration

-- Event handler registration
data = RegisterNetEvent
config = "lunar_unijob:updateWebhookData"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
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
  temp3 = Webhooks
  temp4 = param1.globalWebhook
  temp3.globalWebhook = temp4
  temp3 = Webhooks
  temp4 = param1.settings
  temp3.settings = temp4
  temp3 = param1.globalWebhook
  if temp3 then
    temp3 = SetResourceKvp
    temp4 = "webhook"
    temp5 = param1.globalWebhook
    temp3(temp4, temp5)
  end
  temp3 = param1.settings
  if temp3 then
    temp3 = SetResourceKvp
    temp4 = "webhookSettings"
    temp5 = json
    temp5 = temp5.encode
    temp6 = param1.settings
    temp5, temp6 = temp5(temp6)
    temp3(temp4, temp5, temp6)
  end
end
data(config, item)

-- Event handler registration

-- Event handler registration
data = RegisterNetEvent
config = "lunar_unijob:updateJobWebhook"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1, param2)
  local temp2, temp3, temp4, temp5, temp6, temp7, temp8
  temp2 = source
  temp3 = Framework
  temp3 = temp3.getPlayerFromId
  temp4 = temp2
  temp3 = temp3(temp4)
  if temp3 then
    temp4 = IsPlayerAdmin
    temp5 = temp3.source
    temp4 = temp4(temp5)
    if temp4 then
      temp5 = param2
      temp4 = param2.len
      temp4 = temp4(temp5)
      if 0 ~= temp4 then
        goto lbl_18
      end
    end
  end
  do return end
  ::lbl_18::
  temp4 = Webhooks
  temp4 = temp4.jobs
  temp4[param1] = param2
  temp4 = MySQL
  temp4 = temp4.update
  temp4 = temp4.await
  temp5 = "INSERT INTO lunar_jobscreator_webhooks (name, url) VALUES(?, ?) ON DUPLICATE KEY UPDATE url = VALUES(url)"
  temp6 = {}
  temp7 = param1
  temp8 = param2
  temp6[1] = temp7
  temp6[2] = temp8
  temp4(temp5, temp6)
end
data(config, item)
