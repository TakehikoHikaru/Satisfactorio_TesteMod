data:extend({
  {
    type = "animation",
    name = "test-animation1",
    filename = "__base__/graphics/entity/lab/lab.png",
    width = 98,
    height = 87,
    frame_count = 33,
    line_length = 11,
    animation_speed = 1 / 3,
    shift = util.by_pixel(0, 1.5),
    hr_version =
    {
      filename = "__base__/graphics/entity/lab/hr-lab.png",
      width = 194,
      height = 174,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = util.by_pixel(0, 1.5),
      scale = 0.5
    }
  },
  {
    type = "animation",
    name = "test-animation2",
    filename = "__base__/graphics/entity/pump/pump-north.png",
    width = 53,
    height = 79,
    line_length =8,
    frame_count =32,
    animation_speed = 0.5,
    shift = util.by_pixel(8.000, 7.500),
    hr_version =
    {
      filename = "__base__/graphics/entity/pump/hr-pump-north.png",
      width = 103,
      height = 164,
      scale = 0.5,
      line_length =8,
      frame_count =32,
      animation_speed = 0.5,
      shift = util.by_pixel(8, 3.5) -- {0.515625, 0.21875}
    }
  }
})
