-- ════════════════════════════════════════════════════════════
-- prompt.lua
-- Prompt renderer - UI display
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function callback()
  local L0_2, temp1, temp2, temp3, temp4
  L0_2 = SetDuiUrl
  temp1 = config
  temp2 = "https://cfx-nui-%s/web/index.html"
  temp3 = temp2
  temp2 = temp2.format
  temp4 = cache
  temp4 = temp4.resource
  temp2, temp3, temp4 = temp2(temp3, temp4)
  L0_2(temp1, temp2, temp3, temp4)
end
result(callback)
item = {}
player = 1
result = 1
callback = {}

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function index(param1)
  local temp1, temp2, temp3, temp4
  temp1 = SendDuiMessage
  temp2 = config
  temp3 = json
  temp3 = temp3.encode
  temp4 = param1
  temp3, temp4 = temp3(temp4)
  temp1(temp2, temp3, temp4)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function value(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11
  temp1 = {}
  temp2 = ipairs
  temp3 = param1
  temp2, temp3, temp4, temp5 = temp2(temp3)
  for temp6, temp7 in temp2, temp3, temp4, temp5 do
    temp8 = table
    temp8 = temp8.insert
    temp9 = temp1
    temp10 = {}
    temp11 = temp7.label
    temp10.label = temp11
    temp11 = temp7.icon
    temp11 = "" ~= temp11 and temp11
    temp10.icon = temp11
    temp8(temp9, temp10)
  end
  temp2 = index
  temp3 = {}
  temp3.action = "set_options"
  temp3.options = temp1
  temp2(temp3)
  item = param1
  temp2 = 1
  result = temp2
end
isActive.setOptions = value

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function value()
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10
  L0_2 = table
  L0_2 = L0_2.wipe
  temp1 = callback
  L0_2(temp1)
  L0_2 = 0
  temp1 = ipairs
  temp2 = item
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = temp6.canInteract
    temp7 = temp6.canInteract
    temp7 = temp7()
    temp7 = not temp7
    temp7 = not temp7 or temp7
    temp8 = table
    temp8 = temp8.insert
    temp9 = callback
    temp10 = temp7
    temp8(temp9, temp10)
    if temp7 then
      L0_2 = L0_2 + 1
    end
  end
  temp1 = index
  temp2 = {}
  temp2.action = "update_options"
  temp3 = callback
  temp2.canInteract = temp3
  temp1(temp2)
  temp1 = result
  if L0_2 < temp1 then
    temp1 = isActive.setIndex
    temp2 = L0_2
    temp1(temp2)
  else
    temp1 = isActive.setIndex
    temp2 = player
    temp1(temp2)
  end
  result = L0_2
end
isActive.updateOptions = value

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function value(param1)
  local temp1, temp2, temp3
  if not (param1 <= 0) then
    temp1 = result
    if not (param1 > temp1) then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  player = param1
  temp1 = index
  temp2 = {}
  temp2.action = "set_index"
  temp3 = player
  temp3 = temp3 - 1
  temp2.index = temp3
  temp1(temp2)
end
isActive.setIndex = value

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function value()
  local L0_2, temp1
  L0_2 = index
  temp1 = {}
  temp1.action = "show"
  L0_2(temp1)
end
isActive.show = value

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function value()
  local L0_2, temp1
  L0_2 = index
  temp1 = {}
  temp1.action = "hide"
  L0_2(temp1)
  L0_2 = {}
  item = L0_2
  L0_2 = 1
  player = L0_2
end
isActive.hide = value

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function value()
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2
  L0_2 = 0.27999999999999997
  temp1 = GetAspectRatio
  temp2 = false
  temp1 = temp1(temp2)
  temp1 = 0.27999999999999997 * temp1
  temp2 = DrawSprite
  temp3 = "lunar_prompt"
  temp4 = "main"
  temp5 = 0.0
  temp6 = 0.0
  temp7 = L0_2
  temp8 = temp1
  temp9 = 0.0
  temp10 = 255
  temp11 = 255
  temp12 = 255
  L13_2 = 255
  temp2(temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, L13_2)
end
isActive.draw = value
value = lib
value = value.addKeybind
status = {}
status.name = "interact_prompt"
status.description = "Main interaction keybind"
status.defaultMapper = "keyboard"
status.defaultKey = "E"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function state()
  local L0_2, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8
  L0_2 = item
  if not L0_2 then
    return
  end
  L0_2 = 1
  temp1 = ipairs
  temp2 = item
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = callback
    temp7 = temp7[temp5]
    if temp7 then
      temp7 = player
      if L0_2 == temp7 then
        temp7 = temp6.onSelect
        temp8 = temp6.args
        temp7(temp8)
        return
      end
      L0_2 = L0_2 + 1
    end
  end
end
status.onReleased = state
value(status)
value = RegisterCommand
status = "interact_scroll_up"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function state()
  local L0_2, temp1
  L0_2 = item
  if not L0_2 then
    return
  end
  L0_2 = isActive.setIndex
  temp1 = player
  temp1 = temp1 - 1
  L0_2(temp1)
end
value(status, state)
value = RegisterCommand
status = "interact_scroll_down"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function state()
  local L0_2, temp1
  L0_2 = item
  if not L0_2 then
    return
  end
  L0_2 = isActive.setIndex
  temp1 = player
  temp1 = temp1 + 1
  L0_2(temp1)
end
value(status, state)
value = RegisterKeyMapping
status = "interact_scroll_up"
state = "Interaction scroll up"
handler = "MOUSE_WHEEL"
L12_1 = "IOM_WHEEL_UP"
value(status, state, handler, L12_1)
value = RegisterKeyMapping
status = "interact_scroll_down"
state = "Interaction scroll down"
handler = "MOUSE_WHEEL"
L12_1 = "IOM_WHEEL_DOWN"
value(status, state, handler, L12_1)

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function value()
  local L0_2, temp1
  L0_2 = isActive
  return L0_2
end
GetPrompt = value
