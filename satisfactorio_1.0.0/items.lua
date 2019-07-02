data:extend(
{
  {
    type = "item",
    name = "electric-furnace-2",
    icon = "__base__/graphics/icons/electric-furnace.png",
    icon_size = 32,
    subgroup = "smelting-machine",
    order = "c[electric-furnace-2]",
    place_result = "electric-furnace-2",
    stack_size = 50
  },
  {
    type = "ammo",
    name = "test-fast-cannon-shell",
    icon = "__base__/graphics/icons/cannon-shell.png",
    icon_size = 32,
    ammo_type =
    {
      category = "cannon-shell",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "cannon-projectile",
          starting_speed = 10,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    subgroup = "ammo",
    order = "d[cannon-shell]-a[test-fast]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "test-decelerating-cannon-shell",
    icon = "__base__/graphics/icons/cannon-shell.png",
    icon_size = 32,
    ammo_type =
    {
      category = "cannon-shell",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "test-decelerating-cannon-projectile",
          starting_speed = 1,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    subgroup = "ammo",
    order = "d[cannon-shell]-a[test-decelerating]",
    stack_size = 100
  },
  {
    type = "item",
    name = "roboport-2",
    icon = "__base__/graphics/icons/roboport.png",
    icon_size = 32,
    subgroup = "smelting-machine",
    order = "c[electric-furnace-2]",
    place_result = "electric-furnace-2",
    stack_size = 50
  },
  {
    type = "item-with-inventory",
    name = "portable-steel-chest",
    icon = "__base__/graphics/icons/steel-chest.png",
    icon_size = 32,
    subgroup = "storage",
    order = "a[items]-c[steel-chest]-d[portable]",
    stack_size = 1,
    inventory_size = 20,
    item_filters = {"wooden-chest"},
    item_subgroup_filters = {"belt"}
  },
  {
    type = "item-with-inventory",
    name = "portable-iron-chest",
    icon = "__base__/graphics/icons/steel-chest.png",
    icon_size = 32,
    subgroup = "storage",
    order = "a[items]-c[iron-chest]-d[portable]",
    stack_size = 1,
    inventory_size = 20,
    item_filters = {"steel-chest"},
    item_subgroup_filters = {"belt"},
    filter_mode = "blacklist"
  },
  {
    type = "item-with-inventory",
    name = "container-item",
    icon = "__base__/graphics/icons/steel-chest.png",
    icon_size = 32,
    subgroup = "storage",
    order = "a[items]-c[container]-p[portable]",
    stack_size = 1,
    inventory_size = 20
  },
  
  {
	type = "item-with-inventory",
    name = "container-item",
    icon = "__base__/graphics/icons/steel-chest.png",
    icon_size = 32,
    subgroup = "storage",
    order = "a[items]-c[container]-p[portable]",
    stack_size = 1,
    inventory_size = 20
  },
  
  {
    type = "item",
    name = "burner-generator",
    icon = "__base__/graphics/icons/steam-engine.png",
    icon_size = 32,
    flags = {"hidden"},
    subgroup = "other",
    order = "t[item]-o[burner-generator]",
    stack_size = 10,
    place_result = "burner-generator"
  }
})

local roboport2 = util.table.deepcopy(data.raw.item.roboport)
roboport2.name = "roboport2"
roboport2.place_result = "roboport2"
data.raw.item.roboport2 = roboport2

local beacon2 = util.table.deepcopy(data.raw.item["beacon"])
beacon2.name = "beacon2"
beacon2.place_result = "beacon2"
data.raw.item.beacon2 = beacon2

local floatingChest = util.table.deepcopy(data.raw.item["wooden-chest"])
floatingChest.name = "floating-chest"
floatingChest.place_result = "floating-chest"
floatingChest.localised_name = "item-name.wooden-chest"
data.raw.item[floatingChest.name] = floatingChest

local repairPack2 = util.table.deepcopy(data.raw["repair-tool"]["repair-pack"])
repairPack2.name = "repair-pack-2"
data.raw["repair-tool"]["repair-pack-2"] = repairPack2

local speedModule440 = util.table.deepcopy(data.raw["module"]["speed-module-3"])
speedModule440.name = "speed-module-440"
speedModule440.effect = { speed = {bonus = 4.4} }
data.raw["module"]["speed-module-440"] = speedModule440

local cargoWagon2 = util.table.deepcopy(data.raw["item-with-entity-data"]["cargo-wagon"])
cargoWagon2.name = "cargo-wagon-with-grid"
cargoWagon2.place_result = "cargo-wagon-with-grid"
data.raw["item-with-entity-data"][cargoWagon2.name] = cargoWagon2

local car2 = util.table.deepcopy(data.raw["item-with-entity-data"]["car"])
car2.name = "car-with-grid"
car2.place_result = "car-with-grid"
data.raw["item-with-entity-data"][car2.name] = car2

local batteryEquipment2Item = util.table.deepcopy(data.raw["item"]["battery-equipment"])
batteryEquipment2Item.name = "battery-equipment-fish"
batteryEquipment2Item.placed_as_equipment_result = "battery-equipment-fish"
data.raw["item"][batteryEquipment2Item.name] = batteryEquipment2Item

local fishEquipmentCategory = util.table.deepcopy(data.raw["equipment-category"]["armor"])
fishEquipmentCategory.name = "fish"
data.raw["equipment-category"][fishEquipmentCategory.name] = fishEquipmentCategory

local burnerGeneratorEquipment = util.table.deepcopy(data.raw["item"]["fusion-reactor-equipment"])
burnerGeneratorEquipment.name = "burner-generator-equipment"
burnerGeneratorEquipment.placed_as_equipment_result = "burner-generator-equipment"
data.raw["item"][burnerGeneratorEquipment.name] = burnerGeneratorEquipment