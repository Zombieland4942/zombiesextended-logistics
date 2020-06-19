local entity_base = util.table.deepcopy(data.raw["storage-tank"]["storage-tank"])
local item_base = util.table.deepcopy(data.raw["item"]["storage-tank"])

for x, storage_tank in pairs(storage_tanks) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = storage_tank.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. storage_tank.name .. ".png"
    entity.minable.result = storage_tank.name
    entity.max_health = storage_tank.health
    entity.fluid_box.base_area = storage_tank.fluid_size
    entity.fluid_box.pipe_covers = storage_tank.pipe_covers

    entity.pictures.picture.sheets[1].filename = "__zombiesextended-logistics__/graphics/entity/" .. storage_tank.name .. "/storage-tank.png"
    entity.pictures.picture.sheets[1].hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. storage_tank.name .. "/hr-storage-tank.png"

    item.name = storage_tank.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. storage_tank.name .. ".png"
    item.place_result = storage_tank.name
    item.order = storage_tank.order
    item.subgroup = "ds-storage"

    table.insert(data.raw["technology"][storage_tank.technology].effects, { type = "unlock-recipe", recipe = storage_tank.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = storage_tank.name,
        enabled = false,
        ingredients = storage_tank.ingredients,
        result = storage_tank.name
    }})
end