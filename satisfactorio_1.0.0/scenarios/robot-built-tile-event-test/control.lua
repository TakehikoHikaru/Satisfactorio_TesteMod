script.on_event(defines.events.on_robot_built_tile, function(event)
  game.players[1].print(event.robot.name .. " built-tiles " .. tostring(#event.tiles) .. " item " .. event.stack.name)
end)
