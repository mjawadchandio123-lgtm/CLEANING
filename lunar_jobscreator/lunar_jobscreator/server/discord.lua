-- ════════════════════════════════════════════════════════════
-- discord.lua
-- Discord integration
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function player(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11
  temp1 = SvConfig
  temp1 = temp1.discordBotToken
  if temp1 then
    temp1 = SvConfig
    temp1 = temp1.discordBotToken
    if "TOKEN_HERE" ~= temp1 then
      goto lbl_13
    end
  end
  temp1 = warn
  temp2 = "Discord bot token missing."
  temp1(temp2)
  do return end
  ::lbl_13::
  temp1 = isActive
  temp1 = temp1[param1]
  if temp1 then
    return
  end
  temp1 = isActive
  temp1[param1] = true
  temp1 = data
  temp2 = param1
  temp1 = temp1(temp2)
  temp2 = "users/"
  temp3 = temp1
  temp2 = temp2 .. temp3
  temp3 = promise
  temp3 = temp3.new
  temp3 = temp3()
  if not temp1 then
    return
  end
  while true do
    temp4 = PerformHttpRequest
    temp5 = "https://discord.com/api/"
    temp6 = temp2
    temp5 = temp5 .. temp6

-- Local function handler

-- Local function handler
    function temp6(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3
      L3_3 = temp3
      L4_3 = L3_3
      L3_3 = L3_3.resolve
      L5_3 = {}
      L5_3.data = A1_3
      L5_3.code = A0_3
      L5_3.headers = A2_3
      L3_3(L4_3, L5_3)
    end
    temp7 = "GET"
    temp8 = ""
    temp9 = {}
    temp9["Content-Type"] = "application/json"
    temp10 = "Bot "
    temp11 = SvConfig
    temp11 = temp11.discordBotToken
    temp10 = temp10 .. temp11
    temp9.Authorization = temp10
    temp4(temp5, temp6, temp7, temp8, temp9)
    temp4 = Citizen
    temp4 = temp4.Await
    temp5 = temp3
    temp4 = temp4(temp5)
    temp5 = temp4.code
    if 200 == temp5 then
      temp5 = json
      temp5 = temp5.decode
      temp6 = temp4.data
      temp5 = temp5(temp6)
      temp6 = temp5.avatar
      temp7 = string
      temp7 = temp7.format
      temp8 = "https://cdn.discordapp.com/avatars/%s/%s.png"
      temp9 = temp1
      temp10 = temp6
      temp7 = temp7(temp8, temp9, temp10)
      return temp7
    else
      temp5 = temp4.code
      if 429 == temp5 then
        temp5 = tonumber
        temp6 = temp4.headers
        temp6 = temp6["Retry-After"]
        temp5 = temp5(temp6)
        if temp5 then
          temp6 = warn
          temp7 = "Rate-limited. Waiting "
          temp8 = temp5
          temp9 = " seconds before retrying..."
          temp7 = temp7 .. temp8 .. temp9
          temp6(temp7)
          temp6 = Wait
          temp7 = temp5 * 1000
          temp6(temp7)
        else
          temp6 = warn
          temp7 = "Rate limited but no Retry-After header provided."
          temp6(temp7)
          temp6 = Wait
          temp7 = 5000
          temp6(temp7)
        end
      else
        temp5 = warn
        temp6 = "Couldn't fetch discord user data: HTTP "
        temp7 = tostring
        temp8 = temp4.code
        temp7 = temp7(temp8)
        temp6 = temp6 .. temp7
        temp5(temp6)
        return
      end
    end
  end
end
config(item, player)
