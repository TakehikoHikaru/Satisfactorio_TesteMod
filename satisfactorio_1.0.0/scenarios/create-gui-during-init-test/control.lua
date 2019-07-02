function init_values(frame)
   frame.style.minimal_width = 1
   frame.style.minimal_height = 2
   frame.style.maximal_width = 3
   frame.style.maximal_height = 4
   frame.style.top_padding = 5
   frame.style.right_padding = 6
   frame.style.bottom_padding = 7
   frame.style.left_padding = 8
   frame.style.font_color = {r=1}
   frame.style.font = "default-bold"
   frame.style.horizontally_stretchable = true
   frame.style.vertically_stretchable = false
   frame.style.horizontally_squashable = true
   frame.style.vertically_squashable = false
   frame.style.horizontal_align = "right"
   frame.style.vertical_align = "center"
end

function clear_values(frame)
   frame.style.minimal_width = nil
   frame.style.minimal_height = nil
   frame.style.maximal_width = nil
   frame.style.maximal_height = nil
   frame.style.top_padding = nil
   frame.style.right_padding = nil
   frame.style.bottom_padding = nil
   frame.style.left_padding = nil
   frame.style.font_color = nil
   frame.style.font = nil
   frame.style.horizontally_stretchable = nil
   frame.style.vertically_stretchable = nil
   frame.style.horizontally_squashable = nil
   frame.style.vertically_squashable = nil
   frame.style.horizontal_align = nil
   frame.style.vertical_align = nil
end

script.on_event(defines.events.on_player_created, function(event)
   init_values(game.players[event.player_index].gui.top.add{type="frame", name="test_frame", caption="test"});
end)

script.on_event(defines.events.on_tick, function()
  if game.tick == 0 then return end

  if game.tick == 1 then
    clear_values(game.players[1].gui.top.test_frame)
    return
  end

  -- The test should create the game view before this step and test that it works even with the game view
  if game.tick == 2 then
    init_values(game.players[1].gui.top.test_frame)
    return
  end

  if game.tick == 3 then
    clear_values(game.players[1].gui.top.test_frame)
    return
  end
end)