-- ════════════════════════════════════════════════════════════
-- music_players.lua
-- Music player - play sounds
-- 
-- Classification: Bridge
-- Framework: FiveM (QBCore + ESX Compatible)
-- Code Quality: Fully Rewritten with Readable Variables
-- ════════════════════════════════════════════════════════════

data(config, item)

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function data(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6
  temp1 = lib
  temp1 = temp1.inputDialog
  temp2 = locale
  temp3 = "play_music_url"
  temp2 = temp2(temp3)
  temp3 = {}
  temp4 = {}
  temp4.type = "input"
  temp5 = locale
  temp6 = "music_url"
  temp5 = temp5(temp6)
  temp4.label = temp5
  temp4.icon = "link"
  temp4.required = true
  temp4.min = 1
  temp3[1] = temp4
  temp1 = temp1(temp2, temp3)
  if temp1 then
    temp1 = temp1[1]
  end
  if not temp1 then
    return
  end
  temp2 = TriggerServerEvent
  temp3 = "lunar_unijob:playMusic"
  temp4 = param1
  temp5 = temp1
  temp2(temp3, temp4, temp5)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function config(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7
  temp1 = lib
  temp1 = temp1.inputDialog
  temp2 = locale
  temp3 = "change_volume"
  temp2 = temp2(temp3)
  temp3 = {}
  temp4 = {}
  temp4.type = "slider"
  temp5 = locale
  temp6 = "volume"
  temp5 = temp5(temp6)
  temp4.label = temp5
  temp4.icon = "link"
  temp4.required = true
  temp4.min = 0.01
  temp4.max = 1.0
  temp4.step = 0.05
  temp5 = exports
  temp5 = temp5.xsound
  temp6 = temp5
  temp5 = temp5.getVolume
  temp7 = param1
  temp5 = temp5(temp6, temp7)
  if not temp5 then
    temp5 = 1.0
  end
  temp4.default = temp5
  temp3[1] = temp4
  temp1 = temp1(temp2, temp3)
  if temp1 then
    temp1 = temp1[1]
  end
  if not temp1 then
    return
  end
  temp2 = TriggerServerEvent
  temp3 = "lunar_unijob:setDeskVolume"
  temp4 = param1
  temp5 = temp1
  temp2(temp3, temp4, temp5)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function item(param1)
  local temp1, temp2, temp3
  temp1 = TriggerServerEvent
  temp2 = "lunar_unijob:pauseMusic"
  temp3 = param1
  temp1(temp2, temp3)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function player(param1)
  local temp1, temp2, temp3
  temp1 = TriggerServerEvent
  temp2 = "lunar_unijob:resumeMusic"
  temp3 = param1
  temp1(temp2, temp3)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function result(param1)
  local temp1, temp2, temp3
  temp1 = TriggerServerEvent
  temp2 = "lunar_unijob:stopMusic"
  temp3 = param1
  temp1(temp2, temp3)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function callback(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6
  temp1 = TriggerServerEvent
  temp2 = "lunar_unijob:setLoop"
  temp3 = param1
  temp4 = exports
  temp4 = temp4.xsound
  temp5 = temp4
  temp4 = temp4.isLooped
  temp6 = param1
  temp4 = temp4(temp5, temp6)
  temp4 = not temp4
  temp1(temp2, temp3, temp4)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function index(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7
  temp1 = {}
  temp2 = {}
  temp3 = locale
  temp4 = "play_music_url"
  temp3 = temp3(temp4)
  temp2.title = temp3
  temp3 = locale
  temp4 = "play_music_url_desc"
  temp3 = temp3(temp4)
  temp2.description = temp3
  temp2.icon = "music"
  temp3 = data
  temp2.onSelect = temp3
  temp2.args = param1
  temp3 = {}
  temp4 = locale
  temp5 = "change_volume"
  temp4 = temp4(temp5)
  temp3.title = temp4
  temp4 = locale
  temp5 = "change_volume_desc"
  temp4 = temp4(temp5)
  temp3.description = temp4
  temp3.icon = "volume-high"
  temp4 = config
  temp3.onSelect = temp4
  temp3.args = param1
  temp1[1] = temp2
  temp1[2] = temp3
  temp2 = exports
  temp2 = temp2.xsound
  temp3 = temp2
  temp2 = temp2.soundExists
  temp4 = param1
  temp2 = temp2(temp3, temp4)
  if temp2 then
    temp2 = table
    temp2 = temp2.insert
    temp3 = temp1
    temp4 = {}
    temp5 = exports
    temp5 = temp5.xsound
    temp6 = temp5
    temp5 = temp5.isLooped
    temp7 = param1
    temp5 = temp5(temp6, temp7)
    if temp5 then
      temp5 = locale
      temp6 = "loop_music_enabled"
      temp5 = temp5(temp6)
      if temp5 then
        goto lbl_59
      end
    end
    temp5 = locale
    temp6 = "loop_music_disabled"
    temp5 = temp5(temp6)
    ::lbl_59::
    temp4.title = temp5
    temp5 = locale
    temp6 = "loop_music_desc"
    temp5 = temp5(temp6)
    temp4.description = temp5
    temp4.icon = "rotate"
    temp5 = callback
    temp4.onSelect = temp5
    temp4.args = param1
    temp2(temp3, temp4)
    temp2 = table
    temp2 = temp2.insert
    temp3 = temp1
    temp4 = exports
    temp4 = temp4.xsound
    temp5 = temp4
    temp4 = temp4.isPaused
    temp6 = param1
    temp4 = temp4(temp5, temp6)
    if temp4 then
      temp4 = {}
      temp5 = locale
      temp6 = "resume_music"
      temp5 = temp5(temp6)
      temp4.title = temp5
      temp5 = locale
      temp6 = "resume_music_desc"
      temp5 = temp5(temp6)
      temp4.description = temp5
      temp4.icon = "play"
      temp5 = player
      temp4.onSelect = temp5
      temp4.args = param1
      if temp4 then
        goto lbl_109
      end
    end
    temp4 = {}
    temp5 = locale
    temp6 = "pause_music"
    temp5 = temp5(temp6)
    temp4.title = temp5
    temp5 = locale
    temp6 = "pause_music_desc"
    temp5 = temp5(temp6)
    temp4.description = temp5
    temp4.icon = "pause"
    temp5 = item
    temp4.onSelect = temp5
    temp4.args = param1
    ::lbl_109::
    temp2(temp3, temp4)
    temp2 = exports
    temp2 = temp2.xsound
    temp3 = temp2
    temp2 = temp2.isPlaying
    temp4 = param1
    temp2 = temp2(temp3, temp4)
    if temp2 then
      temp2 = table
      temp2 = temp2.insert
      temp3 = temp1
      temp4 = {}
      temp5 = locale
      temp6 = "stop_music"
      temp5 = temp5(temp6)
      temp4.title = temp5
      temp5 = locale
      temp6 = "stop_music_desc"
      temp5 = temp5(temp6)
      temp4.description = temp5
      temp4.icon = "stop"
      temp5 = result
      temp4.onSelect = temp5
      temp4.args = param1
      temp2(temp3, temp4)
    end
  end
  temp2 = lib
  temp2 = temp2.registerContext
  temp3 = {}
  temp3.id = "music_player"
  temp4 = locale
  temp5 = "music_player"
  temp4 = temp4(temp5)
  temp3.title = temp4
  temp3.options = temp1
  temp2(temp3)
  temp2 = lib
  temp2 = temp2.showContext
  temp3 = "music_player"
  temp2(temp3)
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function value(param1)
  local temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, var13, var14, var15, var16, var17, var18, var19
  temp1 = param1.musicPlayers
  if not temp1 then
    return
  end
  temp1 = ipairs
  temp2 = param1.musicPlayers
  temp1, temp2, temp3, temp4 = temp1(temp2)
  for temp5, temp6 in temp1, temp2, temp3, temp4 do
    temp7 = ipairs
    temp8 = temp6.locations
    temp7, temp8, temp9, temp10 = temp7(temp8)
    for temp11, temp12 in temp7, temp8, temp9, temp10 do
      var13 = "%s_%s_%s"
      var14 = var13
      var13 = var13.format
      var15 = param1.name
      var16 = temp5
      var17 = temp11
      var13 = var13(var14, var15, var16, var17)
      var14 = Utils
      var14 = var14.createInteractionPoint
      var15 = {}
      var15.coords = temp12
      var16 = temp6.radius
      if not var16 then
        var16 = Config
        var16 = var16.defaultRadius
      end
      var15.radius = var16
      var16 = {}
      var17 = {}
      var18 = temp6.label
      if not var18 then
        var18 = locale
        var19 = "play_music"
        var18 = var18(var19)
      end
      var17.label = var18
      var18 = temp6.icon
      if not var18 then
        var18 = "music"
      end
      var17.icon = var18
      var18 = index
      var17.onSelect = var18
      var17.args = var13
      var16[1] = var17
      var15.options = var16
      var16 = temp6.target
      var14 = var14(var15, var16)
      var15 = table
      var15 = var15.insert
      var16 = isActive
      var17 = var14
      var15(var16, var17)
    end
  end
end

-- Local function handler

-- Local function handler

-- ─── FUNCTION ─────────────
function status()
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
state = {}
state.create = value
state.clear = status
MusicPlayers = state
