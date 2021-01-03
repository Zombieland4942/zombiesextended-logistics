
local entity_base = util.table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])
local item_base = util.table.deepcopy(data.raw["item"]["pipe-to-ground"])

local subgroup = "ds-storage"

if settings.startup["zombies-use-seperate-tab"].value == false then
    subgroup = item_base.subgroup
end

for x, pipe_to_ground in pairs(pipe_to_grounds) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = pipe_to_ground.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. pipe_to_ground.name .. ".png"
    entity.minable.result = pipe_to_ground.name
    entity.max_health = pipe_to_ground.health
    entity.fluid_box.pipe_connections[2].max_underground_distance = pipe_to_ground.distance    
    entity.fluid_box.pipe_covers = pipe_to_ground.pipe_covers
    entity.next_upgrade = pipe_to_ground.next_upgrade
        
    entity.pictures.up.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe_to_ground.name .. "/pipe-to-ground-up.png"
    entity.pictures.up.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe_to_ground.name .. "/hr-pipe-to-ground-up.png"
    entity.pictures.down.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe_to_ground.name .. "/pipe-to-ground-down.png"
    entity.pictures.down.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe_to_ground.name .. "/hr-pipe-to-ground-down.png"
    entity.pictures.left.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe_to_ground.name .. "/pipe-to-ground-left.png"
    entity.pictures.left.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe_to_ground.name .. "/hr-pipe-to-ground-left.png"
    entity.pictures.right.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe_to_ground.name .. "/pipe-to-ground-right.png"
    entity.pictures.right.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe_to_ground.name .. "/hr-pipe-to-ground-right.png"

    item.name = pipe_to_ground.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. pipe_to_ground.name .. ".png"
    item.place_result = pipe_to_ground.name
    item.order = item.order .. pipe_to_ground.order
    item.subgroup = subgroup

    table.insert(data.raw["technology"][pipe_to_ground.technology].effects, { type = "unlock-recipe", recipe = pipe_to_ground.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = pipe_to_ground.name,
        enabled = false,
        energy_required = pipe_to_ground.craft_time,
        ingredients = pipe_to_ground.ingredients,
        result = pipe_to_ground.name,
        result_count = 2
    }})
end