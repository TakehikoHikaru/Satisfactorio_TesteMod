script.on_event(defines.events.on_player_gun_inventory_changed, function(event)
  game.players[event.player_index].print("Player gun inventory changed: " .. tostring(event.player_index))
end)
