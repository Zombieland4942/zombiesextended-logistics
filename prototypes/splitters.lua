
local entity_base = util.table.deepcopy(data.raw["splitter"]["express-splitter"])
local item_base = util.table.deepcopy(data.raw["item"]["express-splitter"])

for x, splitter in pairs(splitters) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = splitter.name    
    --entity.icon = "__darkstar-logistics__/graphics/icons/" .. splitter.name .. ".png"
    entity.minable.result = splitter.name
    entity.max_health = splitter.health  
    entity.speed = splitter.speed
        
    item.name = splitter.name
    --item.icon = "__darkstar-logistics__/graphics/icons/" .. splitter.name .. ".png"
    item.place_result = splitter.name
    item.order = splitter.order
    item.subgroup = "ds-belt"

    data:extend({ entity, item })
end