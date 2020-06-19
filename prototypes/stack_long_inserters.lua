
local entity_base = util.table.deepcopy(data.raw["inserter"]["long-handed-inserter"])
local item_base = util.table.deepcopy(data.raw["item"]["long-handed-inserter"])

for x, stack_long_inserter in pairs(stack_long_inserters) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = stack_long_inserter.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. stack_long_inserter.name .. ".png"
    entity.minable.result = stack_long_inserter.name
    entity.max_health = stack_long_inserter.health  
    entity.rotation_speed  = stack_long_inserter.speed
    entity.extension_speed  = stack_long_inserter.speed
    entity.stack = true
    entity.energy_per_movement = stack_long_inserter.energy_KJ .. "KJ"
    entity.energy_per_rotation = stack_long_inserter.energy_KJ .. "KJ"
    entity.energy_source.drain = stack_long_inserter.energy_drain_kw .. "kW"
            
    entity.hand_base_picture.filename = "__zombiesextended-logistics__/graphics/entity/" .. stack_long_inserter.name .. "/stack-inserter-hand-base.png"
    entity.hand_base_picture.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. stack_long_inserter.name .. "/hr-stack-inserter-hand-base.png"
    entity.hand_closed_picture.filename = "__zombiesextended-logistics__/graphics/entity/" .. stack_long_inserter.name .. "/stack-inserter-hand-closed.png"
    entity.hand_closed_picture.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. stack_long_inserter.name .. "/hr-stack-inserter-hand-closed.png"
    entity.hand_open_picture.filename = "__zombiesextended-logistics__/graphics/entity/" .. stack_long_inserter.name .. "/stack-inserter-hand-open.png"
    entity.hand_open_picture.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. stack_long_inserter.name .. "/hr-stack-inserter-hand-open.png"
    entity.platform_picture.sheet.filename = "__zombiesextended-logistics__/graphics/entity/" .. stack_long_inserter.name .. "/stack-inserter-platform.png"
    entity.platform_picture.sheet.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. stack_long_inserter.name .. "/hr-stack-inserter-platform.png"

    item.name = stack_long_inserter.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. stack_long_inserter.name .. ".png"
    item.place_result = stack_long_inserter.name
    item.order = stack_long_inserter.order
    item.subgroup = "ds-stackinserters"

    table.insert(data.raw["technology"][stack_long_inserter.technology].effects, { type = "unlock-recipe", recipe = stack_long_inserter.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = stack_long_inserter.name,
        enabled = false,
        ingredients = stack_long_inserter.ingredients,
        result = stack_long_inserter.name
    }})
end