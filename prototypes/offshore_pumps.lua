
local entity_base = util.table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])
local item_base = util.table.deepcopy(data.raw["item"]["offshore-pump"])

for x, offshore_pump in pairs(offshore_pumps) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = offshore_pump.name    
    --entity.icon = "__darkstar-logistics__/graphics/icons/" .. offshore_pump.name .. ".png"
    entity.minable.result = offshore_pump.name
    entity.max_health = offshore_pump.health
    entity.pumping_speed = offshore_pump.pumping_size
        
    item.name = offshore_pump.name
    --item.icon = "__darkstar-logistics__/graphics/icons/" .. offshore_pump.name .. ".png"
    item.place_result = offshore_pump.name
    item.order = offshore_pump.order
    item.subgroup = "ds-extraction"

    data:extend({ entity, item })
end