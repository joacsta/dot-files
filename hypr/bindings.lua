-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Keep only your personal keybinding overrides here.

-- Desabilite bindings pré-instalados se quiser um controle total:
-- omarchy_preinstalled_bindings = false

-- --- Application bindings ---
o.bind("SUPER + ALT + RETURN", "Tmux", 'uwsm-app -- xdg-terminal-exec --dir="$(omarchy-cmd-terminal-cwd)" tmux new')
o.bind("SUPER + SHIFT + ALT + RETURN", "Browser (private)", "firefox --private-window")
o.bind("SUPER + SHIFT + ALT + M", "Music TUI", "omarchy-launch-or-focus-tui cliamp")
o.bind("SUPER + SHIFT + D", "Docker", "omarchy-launch-tui lazydocker")
o.bind("SUPER + SHIFT + M", "Music", "omarchy-launch-or-focus spotify")
o.bind("SUPER + SHIFT + O", "Obsidian", 'omarchy-launch-or-focus ^obsidian$ "uwsm-app -- obsidian"')
o.bind("SUPER + SHIFT + SLASH", "Passwords", "uwsm-app -- 1password")

-- --- WebApp bindings ---
o.bind("SUPER + SHIFT + A", "Google AI Studio", 'omarchy-launch-webapp "https://aistudio.google.com/"')
o.bind("SUPER + SHIFT + C", "GitHub Copilot", 'omarchy-launch-webapp "https://github.com/copilot"')
o.bind("SUPER + SHIFT + E", "Email", 'omarchy-launch-webapp "https://mail.google.com/"')
o.bind("SUPER + SHIFT + Y", "YouTube", 'omarchy-launch-webapp "https://youtube.com/"')
o.bind("SUPER + SHIFT + W", "WhatsApp", 'omarchy-launch-or-focus-webapp WhatsApp "https://web.whatsapp.com/"')
o.bind("SUPER + SHIFT + G", "GitHub", 'omarchy-launch-or-focus-webapp "GitHub" "https://github.com/"')
o.bind("SUPER + SHIFT + T", "Teams", 'omarchy-launch-webapp "https://teams.microsoft.com/v2/"')
o.bind("SUPER + SHIFT + X", "X", 'omarchy-launch-webapp "https://x.com/"')

hl.unbind("SUPER + ALT + right")
hl.unbind("SUPER + ALT + left")
hl.unbind("SUPER + ALT + up")
hl.unbind("SUPER + ALT + down")

hl.bind("SUPER + ALT + right", hl.dsp.window.resize({ x = 30, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + ALT + left", hl.dsp.window.resize({ x = -30, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + ALT + down", hl.dsp.window.resize({ x = 0, y = 30, relative = true }), { repeating = true })
hl.bind("SUPER + ALT + up", hl.dsp.window.resize({ x = 0, y = -30, relative = true }), { repeating = true })

-- Exemplo de sobrescrita (descomente se precisar):
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu")
