script.on_event(defines.events.on_player_armor_inventory_changed, function(event)
  game.players[event.player_index].print("Player armor inventory changed: " .. tostring(event.player_index))
end)
