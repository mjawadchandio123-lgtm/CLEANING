-- ════════════════════════════════════════════════════════════
-- drag.lua
-- Drag action - drag other players
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function player()
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11
  L0_2 = isDragging
  if not L0_2 then
    return
  end
  L0_2 = DoesEntityExist
  temp1 = isDragging
  L0_2 = L0_2(temp1)
  if L0_2 then
    L0_2 = IsEntityDead
    temp1 = isDragging
    L0_2 = L0_2(temp1)
    if not L0_2 then
      goto lbl_19
    end
  end
  L0_2 = StopDrag
  L0_2()
  L0_2 = nil
  isDragging = L0_2
  ::lbl_19::
  L0_2 = IsEntityPlayingAnim
  temp1 = cache
  temp1 = temp1.ped
  temp2 = targetPlayer
  temp3 = dragData
  temp4 = 3
  L0_2 = L0_2(temp1, temp2, temp3, temp4)
  if not L0_2 then
    L0_2 = lib
    L0_2 = L0_2.requestAnimDict
    temp1 = targetPlayer
    L0_2(temp1)
    L0_2 = TaskPlayAnim
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
    L0_2(temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11)
    L0_2 = RemoveAnimDict
    temp1 = targetPlayer
    L0_2(temp1)
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
    local L0_2, temp1, temp2
    while true do
      L0_2 = isDragging
      if L0_2 then
        L0_2 = DisableControlAction
        temp1 = 0
        temp2 = 21
        L0_2(temp1, temp2)
        L0_2 = SetPlayerSprint
        temp1 = cache
        temp1 = temp1.playerId
        temp2 = false
        L0_2(temp1, temp2)
        L0_2 = Wait
        temp1 = 0
        L0_2(temp1)
      else
        L0_2 = Wait
        temp1 = 500
        L0_2(temp1)
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
  local L0_2, temp1
  L0_2 = isDragging
  return L0_2
end
GetDraggedPed = item
