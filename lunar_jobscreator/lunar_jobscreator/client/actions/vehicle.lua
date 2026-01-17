-- ════════════════════════════════════════════════════════════
-- vehicle.lua
-- Vehicle actions - entry, exit, damage
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

function item(param1, param2)
  local temp2, temp3, temp4, temp5, temp6
  temp2 = NetworkGetEntityFromNetworkId
  temp3 = param1
  temp2 = temp2(temp3)
  temp3 = DoesEntityExist
  temp4 = temp2
  temp3 = temp3(temp4)
  if not temp3 then
    return
  end
  if "hijack" == param2 then
    temp3 = SetVehicleDoorsLocked
    temp4 = temp2
    temp5 = 1
    temp3(temp4, temp5)
    temp3 = SetVehicleDoorsLockedForAllPlayers
    temp4 = temp2
    temp5 = false
    temp3(temp4, temp5)
  elseif "repair" == param2 then
    temp3 = SetVehicleFixed
    temp4 = temp2
    temp3(temp4)
    temp3 = SetVehicleDeformationFixed
    temp4 = temp2
    temp3(temp4)
    temp3 = SetVehicleUndriveable
    temp4 = temp2
    temp5 = false
    temp3(temp4, temp5)
    temp3 = SetVehicleEngineOn
    temp4 = temp2
    temp5 = true
    temp6 = true
    temp3(temp4, temp5, temp6)
  elseif "clean" == param2 then
    temp3 = SetVehicleDirtLevel
    temp4 = temp2
    temp5 = 0.0
    temp3(temp4, temp5)
  elseif "impound" == param2 then
    temp3 = SetEntityAsMissionEntity
    temp4 = temp2
    temp3(temp4)
    temp3 = DeleteVehicle
    temp4 = temp2
    temp3(temp4)
  end
end
vehicleId(seat, item)
vehicleId = Actions
vehicleId = vehicleId.createVehicle
seat = "hijack"
item = "user-ninja"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6
  temp1 = lib
  temp1 = temp1.callback
  temp1 = temp1.await
  temp2 = "lunar_unijob:hijackVehicle"
  temp3 = false
  temp1 = temp1(temp2, temp3)
  temp2 = TaskStartScenarioInPlace
  temp3 = cache
  temp3 = temp3.ped
  temp4 = "PROP_HUMAN_BUM_BIN"
  temp5 = 0
  temp6 = true
  temp2(temp3, temp4, temp5, temp6)
  if temp1 then
    temp2 = Editable
    temp2 = temp2.lockpickMinigame
    temp2 = temp2()
    if temp2 then
      temp2 = LR
      temp2 = temp2.progressBar
      temp3 = locale
      temp4 = "progress_hijack"
      temp3 = temp3(temp4)
      temp4 = Settings
      temp4 = temp4.durations
      temp4 = temp4.hijack
      temp5 = false
      temp2 = temp2(temp3, temp4, temp5)
      if temp2 then
        temp2 = vehicleData
        temp3 = param1
        temp4 = "hijack"
        temp2(temp3, temp4)
        temp2 = LR
        temp2 = temp2.notify
        temp3 = locale
        temp4 = "hijacked"
        temp3 = temp3(temp4)
        temp4 = "success"
        temp2(temp3, temp4)
      end
    end
  end
  temp2 = ClearPedTasks
  temp3 = cache
  temp3 = temp3.ped
  temp2(temp3)
end
vehicleId(seat, item, player)
vehicleId = Actions
vehicleId = vehicleId.createVehicle
seat = "repair"
item = "screwdriver-wrench"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6
  temp1 = lib
  temp1 = temp1.callback
  temp1 = temp1.await
  temp2 = "lunar_unijob:repairVehicle"
  temp3 = false
  temp1 = temp1(temp2, temp3)
  if temp1 then
    temp2 = LR
    temp2 = temp2.progressBar
    temp3 = locale
    temp4 = "progress_repair"
    temp3 = temp3(temp4)
    temp4 = Settings
    temp4 = temp4.durations
    temp4 = temp4.repair
    temp5 = false
    temp6 = {}
    temp6.scenario = "PROP_HUMAN_BUM_BIN"
    temp2 = temp2(temp3, temp4, temp5, temp6)
    if temp2 then
      temp2 = vehicleData
      temp3 = param1
      temp4 = "repair"
      temp2(temp3, temp4)
      temp2 = LR
      temp2 = temp2.notify
      temp3 = locale
      temp4 = "repaired"
      temp3 = temp3(temp4)
      temp4 = "success"
      temp2(temp3, temp4)
    end
  end
end
vehicleId(seat, item, player)
vehicleId = Actions
vehicleId = vehicleId.createVehicle
seat = "clean"
item = "hand-sparkles"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6
  temp1 = lib
  temp1 = temp1.callback
  temp1 = temp1.await
  temp2 = "lunar_unijob:cleanVehicle"
  temp3 = false
  temp1 = temp1(temp2, temp3)
  if temp1 then
    temp2 = LR
    temp2 = temp2.progressBar
    temp3 = locale
    temp4 = "progress_clean"
    temp3 = temp3(temp4)
    temp4 = Settings
    temp4 = temp4.durations
    temp4 = temp4.clean
    temp5 = false
    temp6 = {}
    temp6.scenario = "WORLD_HUMAN_MAID_CLEAN"
    temp2 = temp2(temp3, temp4, temp5, temp6)
    if temp2 then
      temp2 = vehicleData
      temp3 = param1
      temp4 = "clean"
      temp2(temp3, temp4)
      temp2 = LR
      temp2 = temp2.notify
      temp3 = locale
      temp4 = "cleaned"
      temp3 = temp3(temp4)
      temp4 = "success"
      temp2(temp3, temp4)
    end
  end
end
vehicleId(seat, item, player)
vehicleId = Actions
vehicleId = vehicleId.createVehicle
seat = "impound"
item = "truck"

-- Local function handler

-- Local function handler

-- FUNCTION DEFINITION

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6
  temp1 = lib
  temp1 = temp1.callback
  temp1 = temp1.await
  temp2 = "lunar_unijob:impoundVehicle"
  temp3 = false
  temp1 = temp1(temp2, temp3)
  if temp1 then
    temp2 = LR
    temp2 = temp2.progressBar
    temp3 = locale
    temp4 = "progress_impound"
    temp3 = temp3(temp4)
    temp4 = Settings
    temp4 = temp4.durations
    temp4 = temp4.impound
    temp5 = false
    temp6 = {}
    temp6.scenario = "CODE_HUMAN_MEDIC_TEND_TO_DEAD"
    temp2 = temp2(temp3, temp4, temp5, temp6)
    if temp2 then
      temp2 = vehicleData
      temp3 = param1
      temp4 = "impound"
      temp2(temp3, temp4)
      temp2 = LR
      temp2 = temp2.notify
      temp3 = locale
      temp4 = "impounded"
      temp3 = temp3(temp4)
      temp4 = "success"
      temp2(temp3, temp4)
    end
  end
end
vehicleId(seat, item, player)
