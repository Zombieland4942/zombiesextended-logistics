
local entity_base = util.table.deepcopy(data.raw["inserter"]["fast-inserter"])
local item_base = util.table.deepcopy(data.raw["item"]["fast-inserter"])

for x, fast_inserter in pairs(fast_inserters) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = fast_inserter.name    
    --entity.icon = "__darkstar-logistics__/graphics/icons/" .. fast_inserter.name .. ".png"
    entity.minable.result = fast_inserter.name
    entity.max_health = fast_inserter.health  
    entity.rotation_speed  = fast_inserter.speed
    entity.energy_per_movement = fast_inserter.energy_KJ .. "KJ"
    entity.energy_per_rotation = fast_inserter.energy_KJ .. "KJ"
    entity.energy_source.drain = fast_inserter.energy_drain_kw .. "kW"
        
    item.name = fast_inserter.name
    --item.icon = "__darkstar-logistics__/graphics/icons/" .. fast_inserter.name .. ".png"
    item.place_result = fast_inserter.name
    item.order = fast_inserter.order
    item.subgroup = "ds-inserters"

    data:extend({ entity, item })
end