-- ════════════════════════════════════════════════════════════
-- tackle.lua
-- Tackle action - knock down players
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function index(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17
  temp1 = lib
  temp1 = temp1.requestAnimDict
  temp2 = isTackling
  temp1(temp2)
  temp1 = GetPlayerPed
  temp2 = GetPlayerFromServerId
  temp3 = param1
  temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17 = temp2(temp3)
  temp1 = temp1(temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17)
  temp2 = AttachEntityToEntity
  temp3 = cache
  temp3 = temp3.ped
  temp4 = temp1
  temp5 = 11816
  temp6 = 0.25
  temp7 = 0.5
  temp8 = 0.0
  temp9 = 0.5
  temp10 = 0.5
  temp11 = 180.0
  temp12 = false
  var13 = false
  var14 = false
  var15 = false
  var16 = 2
  var17 = false
  temp2(temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17)
  temp2 = TaskPlayAnim
  temp3 = cache
  temp3 = temp3.ped
  temp4 = isTackling
  temp5 = tackleData
  temp6 = 8.0
  temp7 = -8.0
  temp8 = 3000
  temp9 = 0
  temp10 = 0
  temp11 = false
  temp12 = false
  var13 = false
  temp2(temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13)
  temp2 = Wait
  temp3 = 3000
  temp2(temp3)
  temp2 = DetachEntity
  temp3 = cache
  temp3 = temp3.ped
  temp2(temp3)
  temp2 = CreateThread

-- Local function handler

-- Local function handler
  function temp3()
    local inner0, inner1, inner2, inner3, inner4, inner5, inner6, inner7, inner8, inner9, inner10, inner11
    inner0 = 1
    inner1 = 30
    inner2 = 1
    for inner3 = inner0, inner1, inner2 do
      inner4 = SetPedToRagdoll
      inner5 = cache
      inner5 = inner5.ped
      inner6 = 1000
      inner7 = 1000
      inner8 = 0
      inner9 = false
      inner10 = false
      inner11 = false
      inner4(inner5, inner6, inner7, inner8, inner9, inner10, inner11)
      inner4 = Wait
      inner5 = 100
      inner4(inner5)
    end
  end
  temp2(temp3)
  temp2 = RemoveAnimDict
  temp3 = isTackling
  temp2(temp3)
end
result(callback, index)
result = lib
result = result.addKeybind
callback = {}
callback.defaultMapper = "keyboard"
index = Config
index = index.tackleKeybind
callback.defaultKey = index
callback.name = "tackle"
callback.description = "Player tackling"
callback.onReleased = player
result(callback)
