script.on_event(defines.events.on_player_main_inventory_changed, function(event)
  game.players[event.player_index].print("Player main inventory changed: " .. tostring(event.player_index))
end)
