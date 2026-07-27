---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal             = "kitty"
local fileManager          = "dolphin"
local menu                 = "rofi -show drun -theme-str 'window { location: north; anchor: north; y-offset: 20px; }'"
local ide                  = "code"
local browser              = "chromium"
local missionCenter        = "flatpak run io.missioncenter.MissionCenter"
local screenshotMonitor    = "hyprshot -m output --clipboard-only"
local screenshotRegion     = "hyprshot -m region -o ~/Pictures/Screenshots"
local appCenter            = "bazaar"
local clipboard            = "cliphist list | rofi -dmenu -p 'Clipboard' -theme-str 'window { location: northeast; anchor: northeast; y-offset: 20px; x-offset: -10px;}' | cliphist decode | wl-copy"
local screenLock           = "hyprlock"


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind("SUPER + R", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + T", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager))
hl.bind("SUPER + C", hl.dsp.exec_cmd(ide))
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + A", hl.dsp.exec_cmd(appCenter))
hl.bind("SUPER + V", hl.dsp.exec_cmd(clipboard))
hl.bind("SUPER + L", hl.dsp.exec_cmd(screenLock))
hl.bind("SUPER + Escape", hl.dsp.exec_cmd(missionCenter))

hl.bind("Print", hl.dsp.exec_cmd(screenshotMonitor))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd(screenshotRegion))

hl.bind("SUPER + ALT + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

local closeWindowBind = hl.bind("SUPER + Q", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)

-- hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
    end

    -- Example special workspace (scratchpad)
    -- hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
    -- hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

    -- Scroll through existing workspaces with mainMod + scroll
    hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e-1" }))
    hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e+1" }))

    -- Move/resize windows with mainMod + LMB/RMB and dragging
    hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
    hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

    -- Laptop multimedia keys for volume and LCD brightness
    hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
    hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
    hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
    hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
    hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
    hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

    -- Requires playerctl
    hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
    hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
    hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
    hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
