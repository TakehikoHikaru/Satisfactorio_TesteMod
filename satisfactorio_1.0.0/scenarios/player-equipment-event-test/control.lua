script.on_event(defines.events.on_player_placed_equipment, function(event)
  game.players[event.player_index].print("Player placed equipment: " .. tostring(event.player_index) .. ", " .. event.equipment.name)
end)

script.on_event(defines.events.on_player_removed_equipment, function(event)
  game.players[event.player_index].print("Player removed equipment: " .. tostring(event.player_index) .. ", " .. event.equipment)
end)
