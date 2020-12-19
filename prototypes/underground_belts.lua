
local entity_base = util.table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
local item_base = util.table.deepcopy(data.raw["item"]["express-underground-belt"])

local subgroup = "ds-belt"

if settings.startup["zombies-use-seperate-tab"].value == false then
    subgroup = item_base.subgroup
end
for x, underground_belt in pairs(underground_belts) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)
    belt_animation_set = util.table.deepcopy(global_belt_animation_set)

    entity.name = underground_belt.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. underground_belt.name .. ".png"
    entity.minable.result = underground_belt.name
    entity.max_health = underground_belt.health  
    entity.speed = underground_belt.speed
    entity.max_distance = underground_belt.reach
    entity.next_upgrade = underground_belt.next_upgrade
        
    belt_animation_set.animation_set.filename = "__zombiesextended-logistics__/graphics/entity/" .. underground_belt.belt_name .. "/transport-belt.png"
    belt_animation_set.animation_set.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. underground_belt.belt_name .. "/hr-transport-belt.png"

    entity.belt_animation_set = belt_animation_set

    entity.structure.direction_in.sheet.filename = "__zombiesextended-logistics__/graphics/entity/" .. underground_belt.name .. "/underground-belt-structure.png"
    entity.structure.direction_in.sheet.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. underground_belt.name .. "/hr-underground-belt-structure.png"
    entity.structure.direction_out.sheet.filename = "__zombiesextended-logistics__/graphics/entity/" .. underground_belt.name .. "/underground-belt-structure.png"
    entity.structure.direction_out.sheet.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. underground_belt.name .. "/hr-underground-belt-structure.png"
    entity.structure.direction_in_side_loading.sheet.filename = "__zombiesextended-logistics__/graphics/entity/" .. underground_belt.name .. "/underground-belt-structure.png"
    entity.structure.direction_in_side_loading.sheet.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. underground_belt.name .. "/hr-underground-belt-structure.png"
    entity.structure.direction_out_side_loading.sheet.filename = "__zombiesextended-logistics__/graphics/entity/" .. underground_belt.name .. "/underground-belt-structure.png"
    entity.structure.direction_out_side_loading.sheet.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. underground_belt.name .. "/hr-underground-belt-structure.png"

    item.name = underground_belt.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. underground_belt.name .. ".png"
    item.place_result = underground_belt.name
    item.order = item.order .. underground_belt.order
    item.subgroup = subgroup

    table.insert(data.raw["technology"][underground_belt.technology].effects, { type = "unlock-recipe", recipe = underground_belt.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = underground_belt.name,
        enabled = false,
        ingredients = underground_belt.ingredients,
        result = underground_belt.name
    }})
end