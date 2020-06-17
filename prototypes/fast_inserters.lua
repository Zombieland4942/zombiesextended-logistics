
local entity_base = util.table.deepcopy(data.raw["inserter"]["fast-inserter"])
local item_base = util.table.deepcopy(data.raw["item"]["fast-inserter"])

for x, fast_inserter in pairs(fast_inserters) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = fast_inserter.name    
    entity.icon = "__darkstar-logistics__/graphics/icons/" .. fast_inserter.name .. ".png"
    entity.minable.result = fast_inserter.name
    entity.max_health = fast_inserter.health  
    entity.rotation_speed  = fast_inserter.speed
    entity.energy_per_movement = fast_inserter.energy_KJ .. "KJ"
    entity.energy_per_rotation = fast_inserter.energy_KJ .. "KJ"
    entity.energy_source.drain = fast_inserter.energy_drain_kw .. "kW"
        
    entity.hand_base_picture.filename = "__darkstar-logistics__/graphics/entity/" .. fast_inserter.name .. "/inserter-hand-base.png"
    entity.hand_base_picture.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. fast_inserter.name .. "/hr-inserter-hand-base.png"
    entity.hand_closed_picture.filename = "__darkstar-logistics__/graphics/entity/" .. fast_inserter.name .. "/inserter-hand-closed.png"
    entity.hand_closed_picture.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. fast_inserter.name .. "/hr-inserter-hand-closed.png"
    entity.hand_open_picture.filename = "__darkstar-logistics__/graphics/entity/" .. fast_inserter.name .. "/inserter-hand-open.png"
    entity.hand_open_picture.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. fast_inserter.name .. "/hr-inserter-hand-open.png"
    entity.platform_picture.sheet.filename = "__darkstar-logistics__/graphics/entity/" .. fast_inserter.name .. "/inserter-platform.png"
    entity.platform_picture.sheet.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. fast_inserter.name .. "/hr-inserter-platform.png"

    item.name = fast_inserter.name
    item.icon = "__darkstar-logistics__/graphics/icons/" .. fast_inserter.name .. ".png"
    item.place_result = fast_inserter.name
    item.order = fast_inserter.order
    item.subgroup = "ds-inserters"

    table.insert(data.raw["technology"][fast_inserter.technology].effects, { type = "unlock-recipe", recipe = fast_inserter.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = fast_inserter.name,
        enabled = false,
        ingredients = fast_inserter.ingredients,
        result = fast_inserter.name
    }})
end