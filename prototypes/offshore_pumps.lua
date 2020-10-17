
local entity_base = util.table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])
local item_base = util.table.deepcopy(data.raw["item"]["offshore-pump"])

for x, offshore_pump in pairs(offshore_pumps) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = offshore_pump.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. offshore_pump.name .. ".png"
    entity.minable.result = offshore_pump.name
    entity.max_health = offshore_pump.health
    entity.pumping_speed = offshore_pump.pumping_size
    
    entity.graphics_set.animation.north.layers[1].filename = "__zombiesextended-logistics__/graphics/entity/" .. offshore_pump.name .. "/offshore-pump_North.png"
    entity.graphics_set.animation.north.layers[1].hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. offshore_pump.name .. "/hr-offshore-pump_North.png"    
    entity.graphics_set.animation.east.layers[1].filename = "__zombiesextended-logistics__/graphics/entity/" .. offshore_pump.name .. "/offshore-pump_East.png"
    entity.graphics_set.animation.east.layers[1].hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. offshore_pump.name .. "/hr-offshore-pump_East.png"    
    entity.graphics_set.animation.south.layers[1].filename = "__zombiesextended-logistics__/graphics/entity/" .. offshore_pump.name .. "/offshore-pump_South.png"
    entity.graphics_set.animation.south.layers[1].hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. offshore_pump.name .. "/hr-offshore-pump_South.png"    
    entity.graphics_set.animation.west.layers[1].filename = "__zombiesextended-logistics__/graphics/entity/" .. offshore_pump.name .. "/offshore-pump_West.png"
    entity.graphics_set.animation.west.layers[1].hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. offshore_pump.name .. "/hr-offshore-pump_West.png"
        
    item.name = offshore_pump.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. offshore_pump.name .. ".png"
    item.place_result = offshore_pump.name
    item.order = offshore_pump.order
    item.subgroup = "ds-extraction"

    --table.insert(data.raw["technology"][offshore_pump.technology].effects, { type = "unlock-recipe", recipe = offshore_pump.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = offshore_pump.name,
        enabled = false,
        ingredients = offshore_pump.ingredients,
        result = offshore_pump.name
    }})
end