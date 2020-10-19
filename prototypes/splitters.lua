
local entity_base = util.table.deepcopy(data.raw["splitter"]["express-splitter"])
local item_base = util.table.deepcopy(data.raw["item"]["express-splitter"])

for x, splitter in pairs(splitters) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)
    belt_animation_set = util.table.deepcopy(global_belt_animation_set)

    entity.name = splitter.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. splitter.name .. ".png"
    entity.minable.result = splitter.name
    entity.max_health = splitter.health  
    entity.speed = splitter.speed
    entity.next_upgrade = splitter.next_upgrade
        
    belt_animation_set.animation_set.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.belt_name .. "/transport-belt.png"
    belt_animation_set.animation_set.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.belt_name .. "/hr-transport-belt.png"
    entity.belt_animation_set = belt_animation_set

    entity.structure.north.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/splitter-north.png"
    entity.structure.north.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/hr-splitter-north.png"
    entity.structure.east.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/splitter-east.png"
    entity.structure.east.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/hr-splitter-east.png"
    entity.structure.south.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/splitter-south.png"
    entity.structure.south.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/hr-splitter-south.png"
    entity.structure.west.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/splitter-west.png"
    entity.structure.west.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/hr-splitter-west.png"
    entity.structure_patch.east.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/splitter-east-top_patch.png"
    entity.structure_patch.east.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/hr-splitter-east-top_patch.png"
    entity.structure_patch.west.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/splitter-west-top_patch.png"
    entity.structure_patch.west.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. splitter.name .. "/hr-splitter-west-top_patch.png"

    item.name = splitter.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. splitter.name .. ".png"
    item.place_result = splitter.name
    item.order = splitter.order
    item.subgroup = "ds-belt"
    
    table.insert(data.raw["technology"][splitter.technology].effects, { type = "unlock-recipe", recipe = splitter.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = splitter.name,
        enabled = false,
        ingredients = splitter.ingredients,
        result = splitter.name
    }})
end