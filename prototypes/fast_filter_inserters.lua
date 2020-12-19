
local entity_base = util.table.deepcopy(data.raw["inserter"]["fast-inserter"])
local item_base = util.table.deepcopy(data.raw["item"]["fast-inserter"])

local subgroup = "ds-inserters"

if settings.startup["zombies-use-seperate-tab"].value == false then
    subgroup = item_base.subgroup
end

for x, fast_filter_inserter in pairs(fast_filter_inserters) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = fast_filter_inserter.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. fast_filter_inserter.name .. ".png"
    entity.minable.result = fast_filter_inserter.name
    entity.max_health = fast_filter_inserter.health  
    entity.filter_count = 5
    entity.rotation_speed  = fast_filter_inserter.speed
    entity.energy_per_movement = fast_filter_inserter.energy_KJ .. "KJ"
    entity.energy_per_rotation = fast_filter_inserter.energy_KJ .. "KJ"
    entity.energy_source.drain = fast_filter_inserter.energy_drain_kw .. "kW"
    entity.next_upgrade = fast_filter_inserter.next_upgrade
         
    entity.hand_base_picture.filename = "__zombiesextended-logistics__/graphics/entity/" .. fast_filter_inserter.name .. "/inserter-hand-base.png"
    entity.hand_base_picture.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. fast_filter_inserter.name .. "/hr-inserter-hand-base.png"
    entity.hand_closed_picture.filename = "__zombiesextended-logistics__/graphics/entity/" .. fast_filter_inserter.name .. "/inserter-hand-closed.png"
    entity.hand_closed_picture.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. fast_filter_inserter.name .. "/hr-inserter-hand-closed.png"
    entity.hand_open_picture.filename = "__zombiesextended-logistics__/graphics/entity/" .. fast_filter_inserter.name .. "/inserter-hand-open.png"
    entity.hand_open_picture.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. fast_filter_inserter.name .. "/hr-inserter-hand-open.png"
    entity.platform_picture.sheet.filename = "__zombiesextended-logistics__/graphics/entity/" .. fast_filter_inserter.name .. "/inserter-platform.png"
    entity.platform_picture.sheet.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. fast_filter_inserter.name .. "/hr-inserter-platform.png"

    item.name = fast_filter_inserter.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. fast_filter_inserter.name .. ".png"
    item.place_result = fast_filter_inserter.name
    item.order = item.order .. fast_filter_inserter.order
    item.subgroup = subgroup

    table.insert(data.raw["technology"][fast_filter_inserter.technology].effects, { type = "unlock-recipe", recipe = fast_filter_inserter.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = fast_filter_inserter.name,
        enabled = false,
        ingredients = fast_filter_inserter.ingredients,
        result = fast_filter_inserter.name
    }})
end