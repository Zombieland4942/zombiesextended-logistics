
local entity_base = util.table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
local item_base = util.table.deepcopy(data.raw["item-with-entity-data"]["fluid-wagon"])

for x, fluid_wagon in pairs(fluid_wagons) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = fluid_wagon.name    
    entity.icon = "__darkstar-logistics__/graphics/icons/" .. fluid_wagon.name .. ".png"
    entity.minable.result = fluid_wagon.name
    entity.max_health = fluid_wagon.health
    entity.capacity = fluid_wagon.capacity
    entity.weight = fluid_wagon.weight
    entity.max_speed = fluid_wagon.max_speed    
    entity.braking_force = fluid_wagon.breaking_force    
    
    item.name = fluid_wagon.name
    item.icon = "__darkstar-logistics__/graphics/icons/" .. fluid_wagon.name .. ".png"
    item.place_result = fluid_wagon.name
    item.order = fluid_wagon.order
    item.subgroup = "ds-trains"

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