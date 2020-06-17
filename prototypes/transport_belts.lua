
local entity_base = util.table.deepcopy(data.raw["transport-belt"]["express-transport-belt"])
local item_base = util.table.deepcopy(data.raw["item"]["express-transport-belt"])

for x, transport_belt in pairs(transport_belts) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)
    belt_animation_set = util.table.deepcopy(global_belt_animation_set)

    entity.name = transport_belt.name    
    entity.icon = "__darkstar-logistics__/graphics/icons/" .. transport_belt.name .. ".png"
    entity.minable.result = transport_belt.name
    entity.max_health = transport_belt.health  
    entity.speed = transport_belt.speed
    
    belt_animation_set.animation_set.filename = "__darkstar-logistics__/graphics/entity/" .. transport_belt.name .. "/transport-belt.png"
    belt_animation_set.animation_set.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. transport_belt.name .. "/hr-transport-belt.png"

    entity.belt_animation_set = belt_animation_set

    item.name = transport_belt.name
    item.icon = "__darkstar-logistics__/graphics/icons/" .. transport_belt.name .. ".png"
    item.place_result = transport_belt.name
    item.order = transport_belt.order
    item.subgroup = "ds-belt"

    table.insert(data.raw["technology"][transport_belt.technology].effects, { type = "unlock-recipe", recipe = transport_belt.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = transport_belt.name,
        enabled = false,
        ingredients = transport_belt.ingredients,
        result = transport_belt.name
    }})
end