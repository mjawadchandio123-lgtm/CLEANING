-- ════════════════════════════════════════════════════════════
-- other.lua
-- Other miscellaneous actions
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function item(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7
  temp1 = GetDraggedPed
  temp1 = temp1()
  if not temp1 then
    return
  end
  temp2 = GetPlayerServerId
  temp3 = NetworkGetPlayerIndexFromPed
  temp4 = temp1
  temp3, temp4, temp5, temp6, temp7 = temp3(temp4)
  temp2 = temp2(temp3, temp4, temp5, temp6, temp7)
  if 0 == temp2 then
    return
  end
  temp3 = TriggerServerEvent
  temp4 = "lunar_unijob:putInVehicle"
  temp5 = temp2
  temp6 = NetworkGetNetworkIdFromEntity
  temp7 = param1
  temp6, temp7 = temp6(temp7)
  temp3(temp4, temp5, temp6, temp7)
  temp3 = StopDrag
  temp3()
  temp3 = Editable
  temp3 = temp3.actionPerformed
  temp4 = "putInVehicle"
  temp3(temp4)
end

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function player()
  local L0_2, temp1
  L0_2 = GetDraggedPed
  L0_2 = L0_2()
  L0_2 = nil ~= L0_2
  return L0_2
end
actionData(actionType, config, item, player)
actionData = Actions
actionData = actionData.createVehicle
actionType = "takeOutOfVehicle"
config = "user-minus"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10
  temp1 = GetVehicleMaxNumberOfPassengers
  temp2 = param1
  temp1 = temp1(temp2)
  temp2 = temp1 - 1
  temp3 = temp1 - 3
  temp4 = -1
  for temp5 = temp2, temp3, temp4 do
    temp6 = GetPedInVehicleSeat
    temp7 = param1
    temp8 = temp5
    temp6 = temp6(temp7, temp8)
    if 0 ~= temp6 then
      temp7 = IsPedAPlayer
      temp8 = temp6
      temp7 = temp7(temp8)
      if temp7 then
        temp7 = GetPlayerServerId
        temp8 = NetworkGetPlayerIndexFromPed
        temp9 = temp6
        temp8, temp9, temp10 = temp8(temp9)
        temp7 = temp7(temp8, temp9, temp10)
        if 0 == temp7 then
          return
        end
        temp8 = TriggerServerEvent
        temp9 = "lunar_unijob:outTheVehicle"
        temp10 = temp7
        temp8(temp9, temp10)
        temp8 = Editable
        temp8 = temp8.actionPerformed
        temp9 = "takeOutOfVehicle"
        temp8(temp9)
        break
      end
    end
  end
end

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8
  temp1 = GetVehicleMaxNumberOfPassengers
  temp2 = param1
  temp1 = temp1(temp2)
  temp2 = temp1 - 1
  temp3 = temp1 - 3
  temp4 = -1
  for temp5 = temp2, temp3, temp4 do
    temp6 = GetPedInVehicleSeat
    temp7 = param1
    temp8 = temp5
    temp6 = temp6(temp7, temp8)
    if 0 ~= temp6 then
      temp7 = IsPedCuffed
      temp8 = temp6
      temp7 = temp7(temp8)
      if temp7 then
        temp7 = true
        return temp7
      end
    end
  end
  temp2 = false
  return temp2
end
actionData(actionType, config, item, player)
