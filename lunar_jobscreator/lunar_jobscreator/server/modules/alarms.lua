-- ════════════════════════════════════════════════════════════
-- alarms.lua
-- Server alarm management
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

    temp5 = data
    temp5 = temp5[temp6]
    temp6 = param2.index
    temp5 = temp5[temp6]
    if not temp5 then
      goto lbl_26
    end
  end
  do return end
  ::lbl_26::
  temp6 = temp2
  temp5 = temp2.getJob
  temp5 = temp5(temp6)
  temp6 = param2.job
  if temp5 ~= temp6 then
    temp5 = temp4.global
    if not temp5 then
      goto lbl_80
    end
  end
  temp6 = param2.job
  temp5 = data
  temp5 = temp5[temp6]
  temp6 = param2.index
  temp5[temp6] = true
  temp5 = SetTimeout
  temp6 = temp4.cooldown

-- Local function handler

-- Local function handler
  function temp7()
    local inner0, inner1
    inner1 = param2.job
    inner0 = data
    inner0 = inner0[inner1]
    inner1 = param2.index
    inner0[inner1] = nil
  end
  temp5(temp6, temp7)
  temp5 = Dispatch
  temp5 = temp5.call
  temp6 = temp4.locations
  temp7 = param2.locationIndex
  temp6 = temp6[temp7]
  temp6 = temp6.xyz
  temp7 = {}
  temp8 = Config
  temp8 = temp8.alarmCode
  temp7.Code = temp8
  temp8 = locale
  temp9 = "dispatch_alarm"
  temp8 = temp8(temp9)
  temp7.Title = temp8
  temp8 = locale
  temp9 = "dispatch_alarm_desc"
  temp10 = temp3.label
  temp8 = temp8(temp9, temp10)
  temp7.Message = temp8
  temp5(temp6, temp7)
  temp5 = Webhooks
  temp5 = temp5.settings
  temp5 = temp5.alarms
  if temp5 then
    temp5 = Logs
    temp5 = temp5.send
    temp6 = param1
    temp7 = temp3.name
    temp8 = "Triggered the alarm inside %s."
    temp9 = temp8
    temp8 = temp8.format
    temp10 = temp3.label
    temp8, temp9, temp10 = temp8(temp9, temp10)
    temp5(temp6, temp7, temp8, temp9, temp10)
  end
  temp5 = true
  do return temp5 end
  ::lbl_80::
  temp5 = false
  return temp5
end
config(item, player)

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9
  isActive = param1
  temp1 = pairs
  temp2 = isActive
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp8 = temp6.name
    temp7 = data
    temp9 = {}
    temp7[temp8] = temp9
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2, temp3
  temp2 = param1.name
  temp1 = data
  temp3 = {}
  temp1[temp2] = temp3
end
player = {}
player.init = config
player.update = item
Alarms = player
