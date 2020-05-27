
local entity_base = util.table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
local item_base = util.table.deepcopy(data.raw["item"]["express-underground-belt"])

for x, underground_belt in pairs(underground_belts) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = underground_belt.name    
    --entity.icon = "__darkstar-logistics__/graphics/icons/" .. underground_belt.name .. ".png"
    entity.minable.result = underground_belt.name
    entity.max_health = underground_belt.health  
    entity.speed = underground_belt.speed
    entity.max_distance = underground_belt.reach
        
    item.name = underground_belt.name
    --item.icon = "__darkstar-logistics__/graphics/icons/" .. underground_belt.name .. ".png"
    item.place_result = underground_belt.name
    item.order = underground_belt.order
    item.subgroup = "ds-belt"

    data:extend({ entity, item })
end