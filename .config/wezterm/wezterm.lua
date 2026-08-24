local wezterm = require 'wezterm'
local config = wezterm.config_builder()
config.automatically_reload_config = true
-- 文字サイズの設定
config.font_size = 12.0
-- 日本語入力可能に
config.use_ime = true
-- 背景色の透過率
config.window_background_opacity = 0.85
-- 背景のぼかし具合
config.macos_window_background_blur = 20
-- タイトルバーの表示設定
config.window_decorations = "TITLE"
-- タブの表示設定(一つの時は非表示)
-- config.hide_tab_bar_if_only_one_tab = true
-- タブの背景色
config.window_frame = {
  inactive_titlebar_bg = "none",
  active_titlebar_bg = "none",
}
-- タブバーの背景色
config.window_background_gradient = {
  colors = { "#000000" },
}
-- タブバーの+を非表示
config.show_new_tab_button_in_tab_bar = false
-- タブ間の境目を非表示
config.colors = {
  tab_bar = {
    inactive_tab_edge = "none",
  },
}
-- タブの配色設定
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local background = "#5c6d74"
  local foreground = "#FFFFFF"

  if tab.is_active then
    background = "#91e600"
    foreground = "#FFFFFF"
  end

  local title = "   " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "

  return {
    { Background = { Color = background } },
    { Foreground = { Color = foreground } },
    { Text = title },
  }
end)

return config



-- local wezterm = require("wezterm")
-- local config = wezterm.config_builder()

-- config.automatically_reload_config = true
-- config.font_size = 12.0
-- config.use_ime = true
-- config.window_background_opacity = 0.85
-- config.macos_window_background_blur = 20

-- ----------------------------------------------------
-- -- Tab
-- ----------------------------------------------------
-- -- タイトルバーを非表示
-- config.window_decorations = "RESIZE"
-- -- タブバーの表示
-- config.show_tabs_in_tab_bar = false
-- -- タブが一つの時は非表示
-- config.hide_tab_bar_if_only_one_tab = true
-- -- falseにするとタブバーの透過が効かなくなる
-- -- config.use_fancy_tab_bar = false

-- -- タブバーの透過
-- config.window_frame = {
--   inactive_titlebar_bg = "none",
--   active_titlebar_bg = "none",
-- }

-- -- タブバーを背景色に合わせる
-- config.window_background_gradient = {
--   colors = { "#000000" },
-- }

-- -- タブの追加ボタンを非表示
-- config.show_new_tab_button_in_tab_bar = false
-- -- nightlyのみ使用可能
-- -- タブの閉じるボタンを非表示
-- config.show_close_tab_button_in_tabs = false

-- -- タブ同士の境界線を非表示
-- config.colors = {
--   tab_bar = {
--     inactive_tab_edge = "none",
--   },
-- }

-- -- タブの形をカスタマイズ
-- -- タブの左側の装飾
-- local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle
-- -- タブの右側の装飾
-- local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle

-- wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
--   local background = "#5c6d74"
--   local foreground = "#FFFFFF"
--   local edge_background = "none"
--   if tab.is_active then
--     background = "#ae8b2d"
--     foreground = "#FFFFFF"
--   end
--   local edge_foreground = background
--   local title = "   " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "
--   return {
--     { Background = { Color = edge_background } },
--     { Foreground = { Color = edge_foreground } },
--     { Text = SOLID_LEFT_ARROW },
--     { Background = { Color = background } },
--     { Foreground = { Color = foreground } },
--     { Text = title },
--     { Background = { Color = edge_background } },
--     { Foreground = { Color = edge_foreground } },
--     { Text = SOLID_RIGHT_ARROW },
--   }
-- end)

-- ----------------------------------------------------
-- -- keybinds
-- ----------------------------------------------------
-- config.disable_default_key_bindings = true
-- config.keys = require("keybinds").keys
-- config.key_tables = require("keybinds").key_tables
-- config.leader = { key = "q", mods = "CTRL", timeout_milliseconds = 2000 }

-- return config
