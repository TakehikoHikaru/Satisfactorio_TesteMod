script.on_event(defines.events.on_robot_built_entity, function(event)
  game.players[1].print(event.robot.name .. " built-entity " .. event.created_entity.name .. " item " .. event.stack.name)
end)
