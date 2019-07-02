data:extend(
{
  {
    type = "furnace",
    name = "electric-furnace-2",
    icon = "__base__/graphics/icons/electric-furnace.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "electric-furnace-2"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 10},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 2,
    crafting_categories = {"smelting", "fluid-furnace"},
    result_inventory_size = 0,
    crafting_speed = 2,
    energy_usage = "180kW",
    source_inventory_size = 0,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      animation_speed = 0.5,
      shift = {0.421875, 0}
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = true
    },
    fast_replaceable_group = "furnace"
  },
  {
    type = "corpse",
    name = "small-biter-fast-corpse",
    icon = "__base__/graphics/icons/small-biter-corpse.png",
    icon_size = 32,
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[biter]-a[small]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 60,
    final_render_layer = "corpse",
    animation = biterdieanimation(small_biter_scale, small_biter_tint1, small_biter_tint2)
  },
  {
    type = "electric-energy-interface",
    name = "electric-energy-interface-test",
    icon = "__base__/graphics/icons/small-biter-corpse.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    max_health = 500,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      buffer_capacity = "50MJ",
      usage_priority = "primary-input",
      input_flow_limit = "1500kW",
      output_flow_limit = "0kW"
    },
    order="b[bomb]",
    subgroup = "equipment"
  }
})

local roboport2 = util.table.deepcopy(data.raw.roboport.roboport)
roboport2.name = "roboport2"
roboport2.logistics_radius = 50
roboport2.minable.result = "roboport2"
roboport2.fast_replaceable_group = "roboport"
data.raw.roboport.roboport2 = roboport2

data.raw.roboport.roboport.fast_replaceable_group = "roboport"

-- made for test Roboport / TeleportOfflineRoboportIntoPower
local fastRechargeRoboport = util.table.deepcopy(data.raw.roboport.roboport)
fastRechargeRoboport.name = "fast-recharge-roboport"
fastRechargeRoboport.order = "a-a"
fastRechargeRoboport.recharge_minimum = "200kJ" -- /200
data.raw.roboport[fastRechargeRoboport.name] = fastRechargeRoboport

local beacon2 = util.table.deepcopy(data.raw.beacon["beacon"])
beacon2.name = "beacon2"
beacon2.place_result = "beacon2"
beacon2.minable.result = "beacon2"
beacon2.fast_replaceable_group = "beacon"
data.raw.beacon.beacon2 = beacon2

local cannon_projectile2 = util.table.deepcopy(data.raw.projectile["cannon-projectile"])
cannon_projectile2.name = "test-decelerating-cannon-projectile"
cannon_projectile2.acceleration = -0.1
data.raw.projectile["test-decelerating-cannon-projectile"] = cannon_projectile2


data.raw.beacon["beacon"].fast_replaceable_group = "beacon"

local fastCorpse = util.table.deepcopy(data.raw.corpse["big-biter-corpse"])
fastCorpse.name = "fast-corpse"
fastCorpse.time_before_removed = 10
fastCorpse.dying_speed = 1
data.raw.corpse["fast-corpse"] = fastCorpse

data.raw["boiler"]["boiler"].additional_pastable_entities = {"pipe"}


local cargoWagon2 = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
cargoWagon2.name = "cargo-wagon-with-grid"
cargoWagon2.equipment_grid = "large-equipment-grid"
cargoWagon2.minable = {mining_time = 1, result = cargoWagon2.name}
data.raw["cargo-wagon"][cargoWagon2.name] = cargoWagon2

local car2 = util.table.deepcopy(data.raw.car["car"])
car2.name = "car-with-grid"
car2.equipment_grid = "large-equipment-grid"
car2.minable = {mining_time = 0.4, result = car2.name}
data.raw.car[car2.name] = car2

local smallBiter2 = util.table.deepcopy(data.raw.unit["small-biter"])
smallBiter2.name = "small-biter-2"
smallBiter2.flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"}
data.raw.unit[smallBiter2.name] = smallBiter2

-- meade for test TestManualBuilding/CollisionConsistency
local floatingChest = util.table.deepcopy(data.raw.container["wooden-chest"])
floatingChest.name = "floating-chest"
floatingChest.localised_name = "entity-name.wooden-chest"
floatingChest.collision_mask = { "ground-tile", "object-layer" }
data.raw.container[floatingChest.name] = floatingChest

-- made for test PathFinding / SendMoreAroundLongerPathWithObstacles
local fastSmallBiter = util.table.deepcopy(data.raw.unit["small-biter"])
fastSmallBiter.name = "fast-small-biter"
fastSmallBiter.movement_speed = 2 -- 10x
-- fastSmallBiter.flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"}
data.raw.unit[fastSmallBiter.name] = fastSmallBiter

-- made for test CraftingMachine / EnergyIsConsumedProperly
local fastSteelFurnace = util.table.deepcopy(data.raw.furnace["steel-furnace"])
fastSteelFurnace.name = "fast-steel-furnace"
fastSteelFurnace.order = "a-a"
fastSteelFurnace.crafting_speed = fastSteelFurnace.crafting_speed * 2
fastSteelFurnace.energy_usage = "9MW" -- 50x
data.raw.furnace[fastSteelFurnace.name] = fastSteelFurnace

-- made for fluid tests
local fastChemicalPlant = util.table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
fastChemicalPlant.name = "fast-chemical-plant"
fastChemicalPlant.order = "a-a"
fastChemicalPlant.crafting_speed = fastChemicalPlant.crafting_speed * 10
fastSteelFurnace.energy_usage = "9MW" -- 50x
data.raw["assembling-machine"][fastChemicalPlant.name] = fastChemicalPlant

-- made for test Reactor / SingleReactorSetup, with 1000x decreased heat capacity.
local fastReactor = util.table.deepcopy(data.raw.reactor["nuclear-reactor"])
fastReactor.name = "fast-nuclear-reactor"
fastReactor.order = "a-b"
fastReactor.heat_buffer.specific_heat = "100kJ" -- /100
data.raw.reactor[fastReactor.name] = fastReactor

local fastHeatPipe = util.table.deepcopy(data.raw["heat-pipe"]["heat-pipe"])
fastHeatPipe.name = "fast-heat-pipe"
fastHeatPipe.order = "a-a"
fastHeatPipe.heat_buffer.specific_heat = "10kJ" -- /100
data.raw["heat-pipe"][fastHeatPipe.name] = fastHeatPipe

local fastHeatExchanger = util.table.deepcopy(data.raw.boiler["heat-exchanger"])
fastHeatExchanger.name = "fast-heat-exchanger"
fastHeatExchanger.order = "a-a"
fastHeatExchanger.energy_source.specific_heat = "10kJ" -- /100
data.raw.boiler[fastHeatExchanger.name] = fastHeatExchanger

-- made for test CircuitNetwork / MiningDrillStopAndRead
local fastElectricDrill = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
fastElectricDrill.name = "fast-electric-mining-drill"
fastElectricDrill.order = "a-a"
fastElectricDrill.mining_power = 3 -- 1x
fastElectricDrill.mining_speed = 2.5 -- 5x
data.raw["mining-drill"][fastElectricDrill.name] = fastElectricDrill

-- made for test LogisticCellConnectDistance
local roboport2 = util.table.deepcopy(data.raw["roboport"]["roboport"])
roboport2.name = "roboport-2"
roboport2.order = "a-a"
roboport2.logistics_radius = 5
roboport2.logistics_connection_distance = 50

data.raw["roboport"][roboport2.name] = roboport2

local burner_generator = util.table.deepcopy(data.raw["generator"]["steam-engine"])
burner_generator.name = "burner-generator"
burner_generator.fluid_box = nil
burner_generator.max_power_output = "1.5MW"
burner_generator.minable = {mining_time = 1, result = "burner-generator"}
burner_generator.burner =
{
  fuel_category = "chemical",
  effectivity = 0.5,
  fuel_inventory_size = 1
}
data.raw["generator"][burner_generator.name] = burner_generator

local turbo_locomotive = util.table.deepcopy(data.raw["locomotive"]["locomotive"])
turbo_locomotive.name = "turbo-locomotive"
turbo_locomotive.order = "turbo-locomotive"
turbo_locomotive.weight = 2000
turbo_locomotive.max_speed = 12 -- 10x
turbo_locomotive.max_power = "50000kW"
turbo_locomotive.reversing_power_modifier = 0.6
turbo_locomotive.braking_force = 10000
turbo_locomotive.friction_force = 0.0015
turbo_locomotive.vertical_selection_shift = -0.5
turbo_locomotive.air_resistance = 0.002
turbo_locomotive.connection_distance = 3.3
turbo_locomotive.joint_distance = 4.6
turbo_locomotive.energy_per_hit_point = 5
turbo_locomotive.burner =
{
  effectivity = 1000,
  fuel_inventory_size = 3,
  fuel_category = "chemical"
}

data.raw["locomotive"][turbo_locomotive.name] = turbo_locomotive
