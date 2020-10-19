
local entity_base = util.table.deepcopy(data.raw["inserter"]["long-handed-inserter"])
local item_base = util.table.deepcopy(data.raw["item"]["long-handed-inserter"])

for x, fastlong_inserter in pairs(fastlong_inserters) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = fastlong_inserter.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. fastlong_inserter.name .. ".png"
    entity.minable.result = fastlong_inserter.name
    entity.max_health = fastlong_inserter.health  
    entity.rotation_speed  = fastlong_inserter.speed
    entity.extension_speed  = fastlong_inserter.speed
    entity.energy_per_movement = fastlong_inserter.energy_KJ .. "KJ"
    entity.energy_per_rotation = fastlong_inserter.energy_KJ .. "KJ"
    entity.energy_source.drain = fastlong_inserter.energy_drain_kw .. "kW"
    entity.next_upgrade = fastlong_inserter.next_upgrade
           
    entity.hand_base_picture.filename = "__zombiesextended-logistics__/graphics/entity/" .. fastlong_inserter.name .. "/inserter-hand-base.png"
    entity.hand_base_picture.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. fastlong_inserter.name .. "/hr-inserter-hand-base.png"
    entity.hand_closed_picture.filename = "__zombiesextended-logistics__/graphics/entity/" .. fastlong_inserter.name .. "/inserter-hand-closed.png"
    entity.hand_closed_picture.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. fastlong_inserter.name .. "/hr-inserter-hand-closed.png"
    entity.hand_open_picture.filename = "__zombiesextended-logistics__/graphics/entity/" .. fastlong_inserter.name .. "/inserter-hand-open.png"
    entity.hand_open_picture.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. fastlong_inserter.name .. "/hr-inserter-hand-open.png"
    entity.platform_picture.sheet.filename = "__zombiesextended-logistics__/graphics/entity/" .. fastlong_inserter.name .. "/inserter-platform.png"
    entity.platform_picture.sheet.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. fastlong_inserter.name .. "/hr-inserter-platform.png"

    item.name = fastlong_inserter.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. fastlong_inserter.name .. ".png"
    item.place_result = fastlong_inserter.name
    item.order = fastlong_inserter.order
    item.subgroup = "ds-inserters"

    table.insert(data.raw["technology"][fastlong_inserter.technology].effects, { type = "unlock-recipe", recipe = fastlong_inserter.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = fastlong_inserter.name,
        enabled = false,
        ingredients = fastlong_inserter.ingredients,
        result = fastlong_inserter.name
    }})
end