script.on_event(defines.events.on_pre_player_died, function(event)
  game.players[event.player_index].print("Pre you died: " .. tostring(event.player_index))
end)

script.on_event(defines.events.on_player_respawned, function(event)
  game.players[event.player_index].print("You respawned: " .. tostring(event.player_index))
end)
