-- ════════════════════════════════════════════════════════════
-- drag.lua
-- Drag action - drag other players
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function player()
  local var0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11
  var0 = isDragging
  if not var0 then
    return
  end
  var0 = DoesEntityExist
  temp1 = isDragging
  var0 = var0(temp1)
  if var0 then
    var0 = IsEntityDead
    temp1 = isDragging
    var0 = var0(temp1)
    if not var0 then
      goto lbl_19
    end
  end
  var0 = StopDrag
  var0()
  var0 = nil
  isDragging = var0
  ::lbl_19::
  var0 = IsEntityPlayingAnim
  temp1 = cache
  temp1 = temp1.ped
  temp2 = targetPlayer
  temp3 = dragData
  temp4 = 3
  var0 = var0(temp1, temp2, temp3, temp4)
  if not var0 then
    var0 = lib
    var0 = var0.requestAnimDict
    temp1 = targetPlayer
    var0(temp1)
    var0 = TaskPlayAnim
    temp1 = cache
    temp1 = temp1.ped
    temp2 = targetPlayer
    temp3 = dragData
    temp4 = 4.0
    temp5 = 4.0
    temp6 = -1
    temp7 = 49
    temp8 = 0.0
    temp9 = false
    temp10 = false
    temp11 = false
    var0(temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11)
    var0 = RemoveAnimDict
    temp1 = targetPlayer
    var0(temp1)
  end
end
result = 200
item(player, result)
item = Settings
item = item.sprintWhileDrag
if not item then
  item = CreateThread

-- Local function handler

-- Local function handler
  function player()
    local var0, temp1, temp2
    while true do
      var0 = isDragging
      if var0 then
        var0 = DisableControlAction
        temp1 = 0
        temp2 = 21
        var0(temp1, temp2)
        var0 = SetPlayerSprint
        temp1 = cache
        temp1 = temp1.playerId
        temp2 = false
        var0(temp1, temp2)
        var0 = Wait
        temp1 = 0
        var0(temp1)
      else
        var0 = Wait
        temp1 = 500
        var0(temp1)
      end
    end
  end
  item(player)
end
item = Actions
item = item.createPlayer
player = "drag"
result = "hand"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function callback(param1, param2)
  local temp2, temp3, temp4, temp5, temp6
  temp2 = TriggerServerEvent
  temp3 = "lunar_unijob:drag"
  temp4 = param1
  temp2(temp3, temp4)
  temp2 = LR
  temp2 = temp2.showUI
  temp3 = locale
  temp4 = "stop_drag"
  temp5 = Binds
  temp5 = temp5.interact
  temp6 = temp5
  temp5 = temp5.getCurrentKey
  temp5, temp6 = temp5(temp6)
  temp3, temp4, temp5, temp6 = temp3(temp4, temp5, temp6)
  temp2(temp3, temp4, temp5, temp6)
  temp2 = Binds
  temp2 = temp2.interact
  temp2 = temp2.addListener
  temp3 = "stop_drag"
  temp4 = StopDrag
  temp2(temp3, temp4)
  temp2 = Editable
  temp2 = temp2.actionPerformed
  temp3 = "drag"
  temp2(temp3)
  isDragging = param2
end

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function index(param1)
  local temp1, temp2
  temp1 = IsPedCuffed
  temp2 = param1
  temp1 = temp1(temp2)
  if temp1 then
    temp1 = IsCarryActive
    temp1 = temp1()
    temp1 = not temp1
  end
  return temp1
end
item(player, result, callback, index)

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function item()
  local var0, temp1
  var0 = isDragging
  return var0
end
GetDraggedPed = item
