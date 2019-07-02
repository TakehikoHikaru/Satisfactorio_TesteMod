script.on_event(defines.events.on_player_built_tile, function(event)
  game.players[event.player_index].print("Player built " .. tostring(#event.tiles) .. " tiles [1]: " .. tostring(event.tiles[1].position.x) .. ", " .. tostring(event.tiles[1].position.y))
end)

script.on_event(defines.events.on_player_mined_tile, function(event)
  game.players[event.player_index].print("Player mined " .. tostring(#event.tiles) .. " tiles [1]: " .. tostring(event.tiles[1].position.x) .. ", " .. tostring(event.tiles[1].position.y))
end)
