-- vim: set sw=2 ts=2 et :
local wezterm = require('wezterm')

-- Use the following themes for dark or light mode
function scheme_for_appearance(appearance)
  if appearance:find("Dark") then
    return "BlulocoDark";
  else
    return "BlulocoLight";
  end
end

-- Dark | Light mode changed
wezterm.on("window-config-reloaded", function(window, pane)
  local overrides = window:get_config_overrides() or {}
  local appearance = window:get_appearance()
  local scheme = scheme_for_appearance(appearance)

  if overrides.color_scheme ~= scheme then
    overrides.color_scheme = scheme
    window:set_config_overrides(overrides)
  end 
end)

return {
  font = wezterm.font({
    family="PragmataPro Mono",
    weight="Regular"
  }),
  font_size = 13.0,

  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,

  enable_scroll_bar = true,
  window_background_opacity = 0.9,
  window_padding = {
    left = 2,
    right = 2,
    top = 3,
    bottom = 0
  }
}
