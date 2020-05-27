
local entity_base = util.table.deepcopy(data.raw["transport-belt"]["express-transport-belt"])
local item_base = util.table.deepcopy(data.raw["item"]["express-transport-belt"])

for x, transport_belt in pairs(transport_belts) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = transport_belt.name    
    --entity.icon = "__darkstar-logistics__/graphics/icons/" .. transport_belt.name .. ".png"
    entity.minable.result = transport_belt.name
    entity.max_health = transport_belt.health  
    entity.speed = transport_belt.speed
        
    item.name = transport_belt.name
    --item.icon = "__darkstar-logistics__/graphics/icons/" .. transport_belt.name .. ".png"
    item.place_result = transport_belt.name
    item.order = transport_belt.order
    item.subgroup = "ds-belt"

    data:extend({ entity, item })
end