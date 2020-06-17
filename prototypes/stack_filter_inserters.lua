
local entity_base = util.table.deepcopy(data.raw["inserter"]["stack-inserter"])
local item_base = util.table.deepcopy(data.raw["item"]["stack-inserter"])

for x, stack_filter_inserter in pairs(stack_filter_inserters) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = stack_filter_inserter.name    
    entity.icon = "__darkstar-logistics__/graphics/icons/" .. stack_filter_inserter.name .. ".png"
    entity.minable.result = stack_filter_inserter.name
    entity.max_health = stack_filter_inserter.health  
    entity.filter_count = 5
    entity.rotation_speed  = stack_filter_inserter.speed
    entity.energy_per_movement = stack_filter_inserter.energy_KJ .. "KJ"
    entity.energy_per_rotation = stack_filter_inserter.energy_KJ .. "KJ"
    entity.energy_source.drain = stack_filter_inserter.energy_drain_kw .. "kW"
            
    entity.hand_base_picture.filename = "__darkstar-logistics__/graphics/entity/" .. stack_filter_inserter.name .. "/stack-inserter-hand-base.png"
    entity.hand_base_picture.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. stack_filter_inserter.name .. "/hr-stack-inserter-hand-base.png"
    entity.hand_closed_picture.filename = "__darkstar-logistics__/graphics/entity/" .. stack_filter_inserter.name .. "/stack-inserter-hand-closed.png"
    entity.hand_closed_picture.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. stack_filter_inserter.name .. "/hr-stack-inserter-hand-closed.png"
    entity.hand_open_picture.filename = "__darkstar-logistics__/graphics/entity/" .. stack_filter_inserter.name .. "/stack-inserter-hand-open.png"
    entity.hand_open_picture.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. stack_filter_inserter.name .. "/hr-stack-inserter-hand-open.png"
    entity.platform_picture.sheet.filename = "__darkstar-logistics__/graphics/entity/" .. stack_filter_inserter.name .. "/stack-inserter-platform.png"
    entity.platform_picture.sheet.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. stack_filter_inserter.name .. "/hr-stack-inserter-platform.png"

    item.name = stack_filter_inserter.name
    item.icon = "__darkstar-logistics__/graphics/icons/" .. stack_filter_inserter.name .. ".png"
    item.place_result = stack_filter_inserter.name
    item.order = stack_filter_inserter.order
    item.subgroup = "ds-stackinserters"

    table.insert(data.raw["technology"][stack_filter_inserter.technology].effects, { type = "unlock-recipe", recipe = stack_filter_inserter.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = stack_filter_inserter.name,
        enabled = false,
        ingredients = stack_filter_inserter.ingredients,
        result = stack_filter_inserter.name
    }})
end