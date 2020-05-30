
local entity_base = util.table.deepcopy(data.raw["locomotive"]["locomotive"])
local item_base = util.table.deepcopy(data.raw["item-with-entity-data"]["locomotive"])

for x, locomotive in pairs(locomotives) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = locomotive.name    
    entity.icon = "__darkstar-logistics__/graphics/icons/" .. locomotive.name .. ".png"
    entity.minable.result = locomotive.name
    entity.max_health = locomotive.health
    entity.weight = locomotive.weight
    entity.max_speed = locomotive.max_speed
    entity.max_power = locomotive.max_power_kw .. "kW"
    entity.braking_force = locomotive.breaking_force
    entity.friction_force = locomotive.friction_force

    item.name = locomotive.name
    item.icon = "__darkstar-logistics__/graphics/icons/" .. locomotive.name .. ".png"
    item.place_result = locomotive.name
    item.order = locomotive.order
    item.subgroup = "ds-trains"

    data:extend({ entity, item })
end