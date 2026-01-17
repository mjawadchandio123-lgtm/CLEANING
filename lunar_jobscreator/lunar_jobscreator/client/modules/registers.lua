-- ════════════════════════════════════════════════════════════
-- registers.lua
-- Cash register system
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function player(param1)
  local temp1
  data = param1
end
config(item, player)

-- Event handler registration

-- Event handler registration
config = RegisterNetEvent
item = "lunar_unijob:syncRegister"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1, param2)
  local temp2
  temp2 = data
  temp2[param1] = param2
end
config(item, player)

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6
  temp1 = lib
  temp1 = temp1.inputDialog
  temp2 = locale
  temp3 = "register_header"
  temp2 = temp2(temp3)
  temp3 = {}
  temp4 = {}
  temp4.type = "select"
  temp5 = locale
  temp6 = "payment_method"
  temp5 = temp5(temp6)
  temp4.label = temp5
  temp5 = Editable
  temp5 = temp5.getPaymentMethods
  temp5 = temp5()
  temp4.options = temp5
  temp4.required = true
  temp3[1] = temp4
  temp1 = temp1(temp2, temp3)
  if temp1 then
    temp1 = temp1[1]
  end
  if not temp1 then
    return
  end
  temp2 = lib
  temp2 = temp2.callback
  temp2 = temp2.await
  temp3 = "lunar_unijob:payRegister"
  temp4 = false
  temp5 = param1
  temp6 = temp1
  temp2, temp3 = temp2(temp3, temp4, temp5, temp6)
  if temp2 then
    temp4 = LR
    temp4 = temp4.notify
    temp5 = locale
    temp6 = "paid_register"
    temp5 = temp5(temp6)
    temp6 = "success"
    temp4(temp5, temp6)
  elseif temp3 then
    temp4 = LR
    temp4 = temp4.notify
    temp5 = temp3
    temp6 = "error"
    temp4(temp5, temp6)
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6
  temp1 = lib
  temp1 = temp1.inputDialog
  temp2 = locale
  temp3 = "register_header"
  temp2 = temp2(temp3)
  temp3 = {}
  temp4 = {}
  temp4.type = "number"
  temp5 = locale
  temp6 = "register_amount"
  temp5 = temp5(temp6)
  temp4.label = temp5
  temp4.icon = "dollar-sign"
  temp4.min = 1
  temp4.required = true
  temp3[1] = temp4
  temp1 = temp1(temp2, temp3)
  if temp1 then
    temp1 = temp1[1]
  end
  if not temp1 then
    return
  end
  temp2 = TriggerServerEvent
  temp3 = "lunar_unijob:setRegister"
  temp4 = param1
  temp5 = temp1
  temp2(temp3, temp4, temp5)
  temp2 = LR
  temp2 = temp2.notify
  temp3 = locale
  temp4 = "set_register_notify"
  temp3 = temp3(temp4)
  temp4 = "success"
  temp2(temp3, temp4)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2, temp3, temp4
  temp1 = lib
  temp1 = temp1.alertDialog
  temp2 = {}
  temp3 = locale
  temp4 = "register_header"
  temp3 = temp3(temp4)
  temp2.header = temp3
  temp3 = locale
  temp4 = "register_clear_content"
  temp3 = temp3(temp4)
  temp2.content = temp3
  temp2.centered = true
  temp2.cancel = true
  temp1 = temp1(temp2)
  temp1 = "confirm" == temp1
  if not temp1 then
    return
  end
  temp2 = TriggerServerEvent
  temp3 = "lunar_unijob:clearRegister"
  temp4 = param1
  temp2(temp3, temp4)
  temp2 = LR
  temp2 = temp2.notify
  temp3 = locale
  temp4 = "clear_register_notify"
  temp3 = temp3(temp4)
  temp4 = "success"
  temp2(temp3, temp4)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result(param1, param2, param3)
  local temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12
  temp3 = param1.registers
  temp3 = temp3[param2]
  temp4 = "%s_%s_%s"
  temp5 = temp4
  temp4 = temp4.format
  temp6 = param1.name
  temp7 = param2
  temp8 = param3
  temp4 = temp4(temp5, temp6, temp7, temp8)
  temp5 = Utils
  temp5 = temp5.createInteractionPoint
  temp6 = {}
  temp7 = temp3.locations
  temp7 = temp7[param3]
  temp6.coords = temp7
  temp7 = temp3.radius
  if not temp7 then
    temp7 = Config
    temp7 = temp7.defaultRadius
  end
  temp6.radius = temp7
  temp7 = {}
  temp8 = {}
  temp9 = locale
  temp10 = "pay_register"
  temp9 = temp9(temp10)
  temp8.label = temp9
  temp8.icon = "cash-register"

-- Local function handler

-- Local function handler
  function temp9()
    local inner0, inner1
    inner1 = temp4
    inner0 = data
    inner0 = inner0[inner1]
    return inner0
  end
  temp8.canInteract = temp9
  temp9 = config
  temp8.onSelect = temp9
  temp8.args = temp4
  temp9 = {}
  temp10 = locale
  temp11 = "set_register"
  temp10 = temp10(temp11)
  temp9.label = temp10
  temp9.icon = "cash-register"

-- Local function handler

-- Local function handler
  function temp10()
    local inner0, inner1
    inner1 = temp4
    inner0 = data
    inner0 = inner0[inner1]
    inner0 = not inner0
    return inner0
  end
  temp9.canInteract = temp10
  temp10 = item
  temp9.onSelect = temp10
  temp9.args = temp4
  temp10 = {}
  temp11 = locale
  temp12 = "clear_register"
  temp11 = temp11(temp12)
  temp10.label = temp11
  temp10.icon = "cash-register"

-- Local function handler

-- Local function handler
  function temp11()
    local inner0, inner1
    inner1 = temp4
    inner0 = data
    inner0 = inner0[inner1]
    if inner0 then
      inner0 = param1.name
      inner1 = Framework
      inner1 = inner1.getJob
      inner1 = inner1()
      inner0 = inner0 == inner1
    end
    return inner0
  end
  temp10.canInteract = temp11
  temp11 = player
  temp10.onSelect = temp11
  temp10.args = temp4
  temp7[1] = temp8
  temp7[2] = temp9
  temp7[3] = temp10
  temp6.options = temp7
  temp7 = temp3.target
  temp5 = temp5(temp6, temp7)
  temp6 = table
  temp6 = temp6.insert
  temp7 = isActive
  temp8 = temp5
  temp6(temp7, temp8)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function callback()
  local var0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17, var18, var19, var20, L21_2
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
  var0 = GetJobs
  var0 = var0()
  temp1 = pairs
  temp2 = var0
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = temp6.registers
    if temp7 then
      temp7 = ipairs
      temp8 = temp6.registers
      temp7, temp8, temp9, temp10 = temp7(temp8)
      for temp11, temp12 in temp7, temp8, temp9, temp10 do
        var13 = ipairs
        var14 = temp12.locations
        var13, var14, var15, var16 = var13(var14)
        for var17 in var13, var14, var15, var16 do
          var18 = result
          var19 = temp6
          var20 = temp11
          L21_2 = var17
          var18(var19, var20, L21_2)
        end
      end
    end
  end
end
index = {}
index.update = callback
Registers = index
