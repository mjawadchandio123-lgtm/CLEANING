-- ════════════════════════════════════════════════════════════
-- shops.lua
-- Server shop management
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function result(param1, param2, param3, param4, param5)
  local temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15
  temp5 = param1
  temp6 = Framework
  temp6 = temp6.getPlayerFromId
  temp7 = temp5
  temp6 = temp6(temp7)
  if not temp6 then
    temp7 = false
    return temp7
  end
  temp8 = temp6
  temp7 = temp6.getJob
  temp7 = temp7(temp8)
  temp8 = isActive
  temp7 = temp8[temp7]
  if not temp7 then
    temp8 = false
    return temp8
  end
  temp8 = temp7.shops
  temp8 = temp8[param2]
  if not temp8 then
    temp9 = false
    return temp9
  end
  temp9 = temp8.locations
  temp9 = temp9[param3]
  temp10 = temp8.items
  temp10 = temp10[param4]
  if temp9 and temp10 then
    temp11 = Utils
    temp11 = temp11.distanceCheck
    temp12 = temp5
    var13 = temp9
    var14 = 5.0
    temp11 = temp11(temp12, var13, var14)
    if temp11 then
      temp11 = temp10.grade
      if not temp11 then
        goto lbl_50
      end
      temp12 = temp6
      temp11 = temp6.getJobGrade
      temp11 = temp11(temp12)
      temp12 = temp10.grade
      if not (temp11 < temp12) then
        goto lbl_50
      end
    end
  end
  temp11 = false
  do return temp11 end
  ::lbl_50::
  temp11 = temp10.price
  temp11 = temp11 * param5
  if temp11 <= 0 then
    temp12 = false
    return temp12
  end
  temp12 = temp10.currency
  if not temp12 then
    temp12 = "money"
  end
  var14 = temp6
  var13 = temp6.getAccountMoney
  var15 = temp12
  var13 = var13(var14, var15)
  if temp11 > var13 then
    var13 = false
    var14 = locale
    var15 = "not_enough_money"
    var14, var15 = var14(var15)
    return var13, var14, var15
  end
  var13 = SetTimeout
  var14 = 3000

-- Local function handler

-- Local function handler
  function var15()
    local inner0, inner1, inner2, inner3
    inner0 = temp6
    inner1 = inner0
    inner0 = inner0.getAccountMoney
    inner2 = temp12
    inner0 = inner0(inner1, inner2)
    inner1 = temp11
    if inner0 < inner1 then
      return
    end
    inner0 = temp6
    inner1 = inner0
    inner0 = inner0.removeAccountMoney
    inner2 = temp12
    inner3 = temp11
    inner0(inner1, inner2, inner3)
    inner0 = temp6
    inner1 = inner0
    inner0 = inner0.addItem
    inner2 = temp10.name
    inner3 = param5
    inner0(inner1, inner2, inner3)
  end
  var13(var14, var15)
  var13 = true
  return var13
end
item(player, result)

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1, param2, param3)
  local temp3, temp4, temp5, temp6
  temp3 = Editable
  temp3 = temp3.registerShop
  temp4 = param1
  temp5 = param2
  temp6 = param3
  temp3(temp4, temp5, temp6)
  temp3 = config
  temp4 = param1.name
  temp3[param2] = temp4
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11
  temp1 = param1.shops
  if not temp1 then
    return
  end
  temp1 = ipairs
  temp2 = param1.shops
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = "%s_shop_%s"
    temp8 = temp7
    temp7 = temp7.format
    temp9 = param1.name
    temp10 = temp5
    temp7 = temp7(temp8, temp9, temp10)
    temp8 = item
    temp9 = param1
    temp10 = temp7
    temp11 = temp6
    temp8(temp9, temp10, temp11)
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8
  isActive = param1
  temp1 = pairs
  temp2 = isActive
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = player
    temp8 = temp6
    temp7(temp8)
  end
end
callback = {}
callback.init = result
callback.update = player
Shops = callback
