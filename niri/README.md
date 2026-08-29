# My Niri Setup

Scrolling-tile [niri](https://github.com/YaLTeR/niri) Wayland compositor config:

- **Keybindings** — window/column/monitor/workspace navigation, presets, resize (`Mod+Minus/Equal`), floating, tabbed columns, screenshot keys
- **Media/hardware keys** — volume (`volume-control`), brightness (`brightness-control`), play/pause/next via `playerctl`
- **Launcher/actions** — `fuzzel` (Mod+D), `footclient` (Mod+Return), `helium-browser` (Mod+E), `swaylock` (Super+Alt+L), powermenu (Mod+Shift+E), toggle gammastep, color picker, cliphist picker, mirror selected output via `wl-mirror`
- **Startup spawns** — waybar, `foot --server`, `oniri` layout toggler, `wbg` wallpaper from `niri/.config/wallpaper.png`, `wl-paste --watch cliphist store`
- **Layout** — 12px gaps, active/preset column widths, 2px borders, Gruvbox colors
- **Window rules** — maximize footclient/WhatsApp windows, floating Waydroid, notification layer excluded from screencast
- `switch-events` (lid-close → lock+suspend) commented out