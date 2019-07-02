script.on_event(defines.events.on_gui_click, function(event)
  if event.element.name == "test_cb" then
    game.players[event.player_index].print("test test " .. event.tick)
  end
end)
