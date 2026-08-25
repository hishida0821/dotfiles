local wezterm = require 'wezterm'
local config = wezterm.config_builder()
config.automatically_reload_config = true
-- 文字サイズの設定
config.font_size = 12.0
-- フォント設定
config.font = wezterm.font 'Fira Code'
-- 日本語入力可能に
config.use_ime = true
-- 背景色の透過率
config.window_background_opacity = 0.85
-- 背景のぼかし具合
config.macos_window_background_blur = 20
-- タイトルバーの表示設定
-- config.window_decorations = "TITLE"
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
-- 新規タブ展開でルートディレクトリに
config.keys = {
  { key = 't', mods = 'SUPER', action = wezterm.action.SpawnCommandInNewTab { cwd = '~' } },
}

return config


