script.on_event(defines.events.on_player_cursor_stack_changed, function(event)
  game.players[event.player_index].print("Player cursor stack changed: " .. tostring(event.player_index))
end)
