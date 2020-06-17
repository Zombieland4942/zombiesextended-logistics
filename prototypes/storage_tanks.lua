
local entity_base = util.table.deepcopy(data.raw["storage-tank"]["storage-tank"])
local item_base = util.table.deepcopy(data.raw["item"]["storage-tank"])

for x, storage_tank in pairs(storage_tanks) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = storage_tank.name    
    --entity.icon = "__darkstar-logistics__/graphics/icons/" .. storage_tank.name .. ".png"
    entity.minable.result = storage_tank.name
    entity.max_health = storage_tank.health
    entity.fluid_box.base_area = storage_tank.fluid_size
        
    item.name = storage_tank.name
    --item.icon = "__darkstar-logistics__/graphics/icons/" .. storage_tank.name .. ".png"
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