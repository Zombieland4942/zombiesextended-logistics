
local entity_base = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
local item_base = util.table.deepcopy(data.raw["item-with-entity-data"]["cargo-wagon"])

for x, cargo_wagon in pairs(cargo_wagons) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = cargo_wagon.name    
    entity.icon = "__darkstar-logistics__/graphics/icons/" .. cargo_wagon.name .. ".png"
    entity.minable.result = cargo_wagon.name
    entity.max_health = cargo_wagon.health
    entity.inventory_size = cargo_wagon.cargo_size
    entity.weight = cargo_wagon.weight
    entity.max_speed = cargo_wagon.max_speed    
    entity.braking_force = cargo_wagon.breaking_force    
    
    item.name = cargo_wagon.name
    item.icon = "__darkstar-logistics__/graphics/icons/" .. cargo_wagon.name .. ".png"
    item.place_result = cargo_wagon.name
    item.order = cargo_wagon.order
    item.subgroup = "ds-trains"
    
    table.insert(data.raw["technology"][cargo_wagon.technology].effects, { type = "unlock-recipe", recipe = cargo_wagon.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = cargo_wagon.name,
        enabled = false,
        ingredients = cargo_wagon.ingredients,
        result = cargo_wagon.name
    }})
end