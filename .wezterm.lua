local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.colors = {
  ansi = {
    '#020007', -- black
    '#37277d', -- maroon
    '#643aad', -- green
    '#9845c6', -- olive
    '#9b49c8', -- navy
    '#9865cf', -- purple
    '#b895dd', -- teal
    '#dfd0f0', -- silver
  },

  brights = {
    '#ffffff', -- grey
    '#5b43cd', -- red
    '#a87cd8', -- lime
    '#cb97df', -- yellow
    '#cd9ce1', -- blue
    '#cdb5e8', -- fuchsia
    '#f6ebe3', -- aqua
    '#ffffff', -- white
  },
}

return config
