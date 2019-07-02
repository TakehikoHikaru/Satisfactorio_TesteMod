script.on_event(defines.events.on_built_entity, function(event)
  game.players[event.player_index].print("player_built_entity event triggered for player " .. event.player_index .. ". Entity: " .. event.created_entity.name .. ".");
end)

script.on_event(defines.events.on_player_created, function(event)
  game.players[event.player_index].print("player_created event triggered for player " .. event.player_index);
end)

script.on_event(defines.events.on_player_driving_changed_state, function(event)
  game.players[event.player_index].print("State changed to: " .. tostring(game.players[event.player_index].driving))
end)

script.on_event(defines.events.on_entity_settings_pasted, function(event)
  game.players[1].print("post-paste: " .. event.source.name .. ", " .. event.destination.name);
end)
