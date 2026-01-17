-- ════════════════════════════════════════════════════════════
-- stashes.lua
-- Stash system - item storage
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

      temp12 = data
      if temp12 then
        goto lbl_69
      end
    end
    temp12 = isActive
    ::lbl_69::
    var13 = temp10
    temp11(temp12, var13)
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9
  temp1 = param1.stashes
  if not temp1 then
    return
  end
  temp1 = ipairs
  temp2 = param1.stashes
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = temp6.global
    if not temp7 then
      temp7 = config
      temp8 = param1
      temp9 = temp5
      temp7(temp8, temp9)
    end
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player()
  local var0, temp1, temp2, temp3, temp4, temp5, temp6
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
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result()
  local var0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15
  var0 = ipairs
  temp1 = data
  var0, temp1, temp2, temp3 = var0(temp1)
  for temp4, temp5 in var0, temp1, temp2, temp3 do
    temp6 = temp5.remove
    temp6()
  end
  var0 = table
  var0 = var0.wipe
  temp1 = data
  var0(temp1)
  var0 = GetJobs
  var0 = var0()
  temp1 = pairs
  temp2 = var0
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = temp6.stashes
    if temp7 then
      temp7 = ipairs
      temp8 = temp6.stashes
      temp7, temp8, temp9, temp10 = temp7(temp8)
      for temp11, temp12 in temp7, temp8, temp9, temp10 do
        var13 = temp12.global
        if var13 then
          var13 = config
          var14 = temp6
          var15 = temp11
          var13(var14, var15)
        end
      end
    end
  end
end
callback = {}
callback.create = item
callback.clear = player
callback.update = result
Stashes = callback
