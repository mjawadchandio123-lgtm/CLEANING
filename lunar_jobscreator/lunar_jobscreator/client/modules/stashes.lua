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
    L13_2 = temp10
    temp11(temp12, L13_2)
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
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6
  L0_2 = ipairs
  temp1 = isActive
  L0_2, temp1, temp2, temp3 = L0_2(temp1)
  for temp4, temp5 in L0_2, temp1, temp2, temp3 do
    temp6 = temp5.remove
    temp6()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  temp1 = isActive
  L0_2(temp1)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result()
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2, L14_2, L15_2
  L0_2 = ipairs
  temp1 = data
  L0_2, temp1, temp2, temp3 = L0_2(temp1)
  for temp4, temp5 in L0_2, temp1, temp2, temp3 do
    temp6 = temp5.remove
    temp6()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  temp1 = data
  L0_2(temp1)
  L0_2 = GetJobs
  L0_2 = L0_2()
  temp1 = pairs
  temp2 = L0_2
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = temp6.stashes
    if temp7 then
      temp7 = ipairs
      temp8 = temp6.stashes
      temp7, temp8, temp9, temp10 = temp7(temp8)
      for temp11, temp12 in temp7, temp8, temp9, temp10 do
        L13_2 = temp12.global
        if L13_2 then
          L13_2 = config
          L14_2 = temp6
          L15_2 = temp11
          L13_2(L14_2, L15_2)
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
