-- ════════════════════════════════════════════════════════════
-- shops.lua
-- Server shop management
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function result(param1, param2, param3, param4, param5)
  local temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2
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
    L13_2 = temp9
    L14_2 = 5.0
    temp11 = temp11(temp12, L13_2, L14_2)
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
  L14_2 = temp6
  L13_2 = temp6.getAccountMoney
  L15_2 = temp12
  L13_2 = L13_2(L14_2, L15_2)
  if temp11 > L13_2 then
    L13_2 = false
    L14_2 = locale
    L15_2 = "not_enough_money"
    L14_2, L15_2 = L14_2(L15_2)
    return L13_2, L14_2, L15_2
  end
  L13_2 = SetTimeout
  L14_2 = 3000

-- Local function handler

-- Local function handler
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = temp6
    L1_3 = L0_3
    L0_3 = L0_3.getAccountMoney
    L2_3 = temp12
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = temp11
    if L0_3 < L1_3 then
      return
    end
    L0_3 = temp6
    L1_3 = L0_3
    L0_3 = L0_3.removeAccountMoney
    L2_3 = temp12
    L3_3 = temp11
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = temp6
    L1_3 = L0_3
    L0_3 = L0_3.addItem
    L2_3 = temp10.name
    L3_3 = param5
    L0_3(L1_3, L2_3, L3_3)
  end
  L13_2(L14_2, L15_2)
  L13_2 = true
  return L13_2
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
