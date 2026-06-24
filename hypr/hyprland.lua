-------------
-- REQUIRE --
-------------

require("noctalia").apply_theme()
----------
-- VARS --
----------

local ipc = "noctalia msg"

---------------
-- AUTOSTART --
---------------

hl.on("hyprland.start", function ()
	hl.exec_cmd("noctalia")
end)
--------------
-- MONITORS --
--------------

hl.monitor({
	output = "",
	mode = "highrr",
	position = "0x0",
	scale = 1
})

-----------
-- BINDS --
-----------
hl.bind("SUPER+Space", hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))
hl.bind("SUPER+S", hl.dsp.exec_cmd(ipc .. " panel-toggle control-center"))
hl.bind("SUPER+comma", hl.dsp.exec_cmd(ipc .. " settings-toggle"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. " volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. " volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. " volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. " brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. " brightness-down"))
hl.bind("SUPER+T", hl.dsp.exec_cmd("foot"))
hl.bind("SUPER+Q", hl.dsp.window.kill())
hl.bind("SUPER+W", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER+E", hl.dsp.exec_cmd("nautilus"))
hl.bind("SUPER+D",hl.dsp.window.fullscreen({mode = "maximized"}))

------------
-- CONFIG --
------------

hl.config({
	dwindle = {
		preserve_split = true
	},
	general = {
		gaps_in = 5,
		gaps_out = 10
	},
	decoration = {
		shadow = {
		enabled = true,
		range = 4,
		render_power = 3,
		color = 0xee1a1a1a,
		};
		blur = {
			enabled = true,
			size = 3,
			passes = 2,
			vibrancy = 0.17
		},
		rounding = 10,
		rounding_power = 2
	},
	
	input = {
		touchpad = {
			natural_scroll = true
		},
		sensitivity = -0.2,
		accel_profile = "flat"
	}
})
-----------
-- RULES --
-----------
hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})


