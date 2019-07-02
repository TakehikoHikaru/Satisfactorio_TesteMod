script.on_event(defines.events.on_player_tool_inventory_changed, function(event)
  game.players[event.player_index].print("Player tool inventory changed: " .. tostring(event.player_index))
end)
