
local entity_base = util.table.deepcopy(data.raw["loader"]["express-loader"])
local item_base = util.table.deepcopy(data.raw["item"]["express-loader"])

for x, loader in pairs(loaders) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)
    belt_animation_set = util.table.deepcopy(global_belt_animation_set)

    entity.name = loader.name    
    entity.icon = "__darkstar-logistics__/graphics/icons/" .. loader.name .. ".png"
    entity.minable.result = loader.name    
    entity.speed = loader.speed
    
    belt_animation_set.animation_set.filename = "__darkstar-logistics__/graphics/entity/" .. loader.belt_name .. "/transport-belt.png"
    belt_animation_set.animation_set.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. loader.belt_name .. "/hr-transport-belt.png"

    entity.belt_animation_set = belt_animation_set

    item.name = loader.name
    item.icon = "__darkstar-logistics__/graphics/icons/" .. loader.name .. ".png"
    item.place_result = loader.name
    item.order = loader.order
    item.subgroup = "ds-belt"

    data:extend({ entity, item })
end