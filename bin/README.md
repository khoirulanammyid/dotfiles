# My Bin Setup

A collection of custom helper scripts installed to `~/.local/bin`:

- `volume-control` / `brightness-control` — media key volume/brightness controls via `wpctl` and `brightnessctl`, with on-screen notifications (`osd`)
- `osd` — thin wrapper around `notify-send` for the custom mako OSD style
- `powermenu` — lock / suspend / reboot / shutdown / logout menu via `fuzzel`, using `niri msg`, `swaylock`, and `systemctl`
- `color-picker` — pick a color with `grim`+`slurp`, copy hex to clipboard (`wl-copy`) and show a preview via ImageMagick
- `toggle-gammastep` — toggle screen warmth (4500K / gamma 0.6) with `gammastep` + OSD
- `cliphist-fuzzel` — clipboard manager: browse `cliphist` history with `fuzzel`, copy selection, thumbnail previews
- `sudo-fuzzel` — graphical sudo password prompt via `fuzzel`
- `switch-profile` — cycle ACPI platform power profiles (`/sys/firmware/acpi/platform_profile`) with a `fuzzel` picker
- `alm` — simple sleep alarm that plays audio via `mpv`
- `allmytoes` — prebuilt image-previewer binary used by the yazi package