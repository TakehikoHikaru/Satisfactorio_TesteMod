local burnerGeneratorEquipment = util.table.deepcopy(data.raw["generator-equipment"]["fusion-reactor-equipment"])
burnerGeneratorEquipment.name = "burner-generator-equipment"
burnerGeneratorEquipment.placed_as_equipment_result = "burner-generator-equipment"
burnerGeneratorEquipment.burner =
{
  effectivity = 1,
  fuel_category = "chemical",
  fuel_inventory_size = 1,
  emissions = 0.1 / 6.5,
  smoke =
  {
    {
      name = "smoke",
      position = {0.0, -0.8},
      frequency = 5,
      starting_vertical_speed = 0.0,
      starting_frame_deviation = 60
    }
  }
}
data.raw["generator-equipment"][burnerGeneratorEquipment.name] = burnerGeneratorEquipment

local batteryEquipment2 = util.table.deepcopy(data.raw["battery-equipment"]["battery-equipment"])
batteryEquipment2.name = "battery-equipment-fish"
batteryEquipment2.categories = {"fish"}
data.raw["battery-equipment"][batteryEquipment2.name] = batteryEquipment2