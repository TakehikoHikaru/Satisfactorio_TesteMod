script.on_event(defines.events.on_player_trash_inventory_changed, function(event)
  game.players[event.player_index].print("Player trash inventory changed: " .. tostring(event.player_index))
end)
