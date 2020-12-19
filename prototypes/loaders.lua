
local entity_base = util.table.deepcopy(data.raw["loader"]["express-loader"])
local item_base = util.table.deepcopy(data.raw["item"]["express-loader"])

local subgroup = "ds-belt"

if settings.startup["zombies-use-seperate-tab"].value == false then
    subgroup = item_base.subgroup
end

for x, loader in pairs(loaders) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)
    belt_animation_set = util.table.deepcopy(global_belt_animation_set)

    entity.name = loader.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. loader.name .. ".png"
    entity.minable.result = loader.name    
    entity.speed = loader.speed
    
    belt_animation_set.animation_set.filename = "__zombiesextended-logistics__/graphics/entity/" .. loader.belt_name .. "/transport-belt.png"
    belt_animation_set.animation_set.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. loader.belt_name .. "/hr-transport-belt.png"

    entity.belt_animation_set = belt_animation_set

    item.name = loader.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. loader.name .. ".png"
    item.place_result = loader.name
    item.order = item.order .. loader.order
    item.subgroup = subgroup

    data:extend({ entity, item })
end