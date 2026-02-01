local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.keys = {
  {key="Enter", mods="SHIFT", action=wezterm.action{SendString="\x1b\r"}},
}

-- font size
config.font_size = 16.0

-- ベル音を有効化
config.audible_bell = 'SystemBeep'
-- 視覚的ベルも有効化（オプション）
config.visual_bell = {
  fade_in_function = 'EaseIn',
  fade_in_duration_ms = 150,
  fade_out_function = 'EaseOut',
  fade_out_duration_ms = 150,
}
config.notification_handling = "AlwaysShow"
-- System notification for claude
wezterm.on('bell', function(window, pane)
  wezterm.log_info('Bell triggered!')  -- デバッグ用
  window:toast_notification('WezTerm', 'Claude Code notification', nil, 4000)
end)

return config
