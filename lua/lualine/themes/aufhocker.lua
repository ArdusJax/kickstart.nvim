local colors = {
  black        = '#1B1B1E',
  white        = '#D8DBE2',
  red          = '#d75f00',
  green        = '#00af87',
  blue         = '#58A4B0',
  yellow       = '#d7d787',
  gray         = '#005f87',
  darkgray     = '#767676',
  lightgray    = '#ADB5BD',
  inactivegray = '#ADB5BD',
}
return {
  normal = {
    a = {bg = colors.gray, fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.black},
    c = {bg = colors.lightgray, fg = colors.black}
  },
  insert = {
    a = {bg = colors.red, fg = colors.white, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.black},
    c = {bg = colors.lightgray, fg = colors.black}
  },
  visual = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.black},
    c = {bg = colors.inactivegray, fg = colors.black}
  },
  replace = {
    a = {bg = colors.lightgray, fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.white},
    c = {bg = colors.black, fg = colors.white}
  },
  command = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.black},
    c = {bg = colors.inactivegray, fg = colors.black}
  },
  inactive = {
    a = {bg = colors.darkgray, fg = colors.gray, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.gray},
    c = {bg = colors.darkgray, fg = colors.gray}
  }
}
