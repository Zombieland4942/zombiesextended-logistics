
local entity_base = util.table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
local item_base = util.table.deepcopy(data.raw["item-with-entity-data"]["fluid-wagon"])

local subgroup = "ds-trains"

if settings.startup["zombies-use-seperate-tab"].value == false then
    subgroup = item_base.subgroup
end

for x, fluid_wagon in pairs(fluid_wagons) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = fluid_wagon.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. fluid_wagon.name .. ".png"
    entity.minable.result = fluid_wagon.name
    entity.max_health = fluid_wagon.health
    entity.capacity = fluid_wagon.capacity
    entity.weight = fluid_wagon.weight
    entity.max_speed = fluid_wagon.max_speed    
    entity.braking_force = fluid_wagon.breaking_force    
    entity.equipment_grid = fluid_wagon.equipment_grid
    
    item.name = fluid_wagon.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. fluid_wagon.name .. ".png"
    item.place_result = fluid_wagon.name
    item.order = item.order .. fluid_wagon.order
    item.subgroup = subgroup

    table.insert(data.raw["technology"][fluid_wagon.technology].effects, { type = "unlock-recipe", recipe = fluid_wagon.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = fluid_wagon.name,
        enabled = false,
        ingredients = fluid_wagon.ingredients,
        result = fluid_wagon.name
    }})
end