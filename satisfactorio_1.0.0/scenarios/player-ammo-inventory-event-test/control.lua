script.on_event(defines.events.on_player_ammo_inventory_changed, function(event)
  game.players[event.player_index].print("Player ammo inventory changed: " .. tostring(event.player_index))
end)
