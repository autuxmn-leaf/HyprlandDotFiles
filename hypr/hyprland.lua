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
	hl.exec_cmd("hypridle")
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
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -z -m region --clipboard-only"))
hl.bind("SUPER+Space", hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))
hl.bind("SUPER+S", hl.dsp.exec_cmd(ipc .. " panel-toggle control-center"))
hl.bind("SUPER+comma", hl.dsp.exec_cmd(ipc .. " settings-toggle"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. " volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. " volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. " volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. " brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. " brightness-down"))
hl.bind("SUPER+T", hl.dsp.exec_cmd("foot"))
hl.bind("SUPER+Q", hl.dsp.window.close())
hl.bind("SUPER+SHIFT+Q", hl.dsp.window.kill())
hl.bind("SUPER+W", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER+E", hl.dsp.exec_cmd("nautilus"))
hl.bind("SUPER+1", hl.dsp.focus({workspace=1}))
hl.bind("SUPER+2", hl.dsp.focus({workspace=2}))
hl.bind("SUPER+3", hl.dsp.focus({workspace=3}))
hl.bind("SUPER+4", hl.dsp.focus({workspace=4}))
hl.bind("SUPER+5", hl.dsp.focus({workspace=5}))
hl.bind("SUPER+6", hl.dsp.focus({workspace=6}))
hl.bind("SUPER+7", hl.dsp.focus({workspace=7}))
hl.bind("SUPER+8", hl.dsp.focus({workspace=8}))
hl.bind("SUPER+9", hl.dsp.focus({workspace=9}))
hl.bind("SUPER+0", hl.dsp.focus({workspace=10}))
hl.bind("SUPER+ALT+1", hl.dsp.window.move({workspace=1,follow=false}))
hl.bind("SUPER+ALT+2", hl.dsp.window.move({workspace=2,follow=false}))
hl.bind("SUPER+ALT+3", hl.dsp.window.move({workspace=3,follow=false}))
hl.bind("SUPER+ALT+4", hl.dsp.window.move({workspace=4,follow=false}))
hl.bind("SUPER+ALT+5", hl.dsp.window.move({workspace=5,follow=false}))
hl.bind("SUPER+ALT+6", hl.dsp.window.move({workspace=6,follow=false}))
hl.bind("SUPER+ALT+7", hl.dsp.window.move({workspace=7,follow=false}))
hl.bind("SUPER+ALT+8", hl.dsp.window.move({workspace=8,follow=false}))
hl.bind("SUPER+ALT+9", hl.dsp.window.move({workspace=9,follow=false}))
hl.bind("SUPER+ALT+0", hl.dsp.window.move({workspace=10,follow=false}))
hl.bind("SUPER+D",hl.dsp.window.fullscreen({mode = "maximized"}))
hl.bind("SUPER+F",hl.dsp.window.fullscreen())
hl.bind("SUPER+mouse:273", hl.dsp.window.resize())

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
			clickfinger_behavior = true,
			natural_scroll = true,
			disable_while_typing = false
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
---------------
-- ANIMATION -- 
---------------
hl.curve(
	"penis",
	{
		type = "bezier",
		points = {{0.83, 0}, { 0.17, 1}}
	}
)
hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 3,
	bezier = "penis"
})
