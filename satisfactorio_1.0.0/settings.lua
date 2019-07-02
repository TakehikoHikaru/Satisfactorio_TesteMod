data:extend({
  {
    type = "int-setting",
    name = "setting-1",
    setting_type = "runtime-per-user",
    default_value = 112
  },
  {
    type = "double-setting",
    name = "setting-2",
    setting_type = "runtime-global",
    default_value = 100,
    minimum_value = -20,
    maximum_value = 5000
  }
})