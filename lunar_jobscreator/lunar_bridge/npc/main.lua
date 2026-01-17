-- ════════════════════════════════════════════════════════════
-- main.lua
-- NPC interaction system
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

  data = temp6
  temp6 = SetCamCoord
  temp7 = data
  temp8 = temp4.x
  temp9 = temp4.y
  temp10 = temp4.z
  temp6(temp7, temp8, temp9, temp10)
  temp6 = PointCamAtCoord
  temp7 = data
  temp8 = temp5.x
  temp9 = temp5.y
  temp10 = temp5.z
  temp10 = temp10 + 0.4
  temp6(temp7, temp8, temp9, temp10)
  temp6 = RenderScriptCams
  temp7 = true
  temp8 = true
  temp9 = 1000
  temp10 = true
  temp11 = true
  temp6(temp7, temp8, temp9, temp10, temp11)
  temp6 = Wait
  temp7 = 500
  temp6(temp7)
  temp6 = math
  temp6 = temp6.random
  temp7 = item
  temp7 = #temp7
  temp6 = temp6(temp7)
  temp7 = item
  temp6 = temp7[temp6]
  temp7 = PlayPedAmbientSpeechNative
  temp8 = param1
  temp9 = temp6
  temp10 = "SPEECH_PARAMS_FORCE_NORMAL_CLEAR"
  temp7(temp8, temp9, temp10)
  temp7 = SetNuiFocus
  temp8 = true
  temp9 = true
  temp7(temp8, temp9)
  temp7 = SendNUIMessage
  temp8 = {}
  temp8.action = "show_npc"
  temp8.header = param2
  temp9 = param3.question
  temp8.question = temp9
  temp9 = param3.answers
  temp8.answers = temp9
  temp9 = param3.answerItems
  temp8.answerItems = temp9
  temp9 = param3.answerNumberInput
  temp8.answerNumberInput = temp9
  temp7(temp8)
  isActive = param1
  config = param4
end
player(result, callback)
player = RegisterNUICallback
result = "npc_response"

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function callback(param1, param2)
  local temp2, temp3, temp4, temp5, temp6, temp7, temp8
  temp2 = config
  if temp2 then
    temp2 = isActive
    if temp2 then
      temp2 = data
      if temp2 then
        goto lbl_15
      end
    end
  end
  temp2 = param2
  temp3 = {}
  do return temp2(temp3) end
  ::lbl_15::
  temp2 = config
  temp3 = param1.type
  temp3 = param1 or temp3
  if "escape" == temp3 or not param1 then
    temp3 = nil
  end
  temp2 = temp2(temp3)
  if temp2 then
    temp3 = param1.type
    if "escape" ~= temp3 then
      temp3 = SendNUIMessage
      temp4 = {}
      temp4.action = "next_question"
      temp5 = temp2.question
      temp4.question = temp5
      temp5 = temp2.answers
      temp4.answers = temp5
      temp5 = temp2.answerItems
      temp4.answerItems = temp5
      temp5 = temp2.answerNumberInput
      temp4.answerNumberInput = temp5
      temp3(temp4)
  end
  else
    temp3 = param1.type
    if "escape" ~= temp3 then
      temp3 = SendNUIMessage
      temp4 = {}
      temp4.action = "hide_npc"
      temp3(temp4)
    end
    temp3 = SetNuiFocus
    temp4 = false
    temp5 = false
    temp3(temp4, temp5)
    temp3 = SetCamActive
    temp4 = data
    temp5 = false
    temp3(temp4, temp5)
    temp3 = RenderScriptCams
    temp4 = false
    temp5 = true
    temp6 = 1000
    temp7 = true
    temp8 = true
    temp3(temp4, temp5, temp6, temp7, temp8)
    temp3 = nil
    config = temp3
  end
  temp3 = param2
  temp4 = {}
  temp3(temp4)
end
player(result, callback)
