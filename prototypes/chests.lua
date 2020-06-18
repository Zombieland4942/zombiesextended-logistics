
local entity_base = util.table.deepcopy(data.raw["container"]["steel-chest"])
local item_base = util.table.deepcopy(data.raw["item"]["steel-chest"])

for x, chest in pairs(chests) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = chest.name    
    entity.icon = "__darkstar-logistics__/graphics/icons/" .. chest.name .. ".png"
    entity.minable.result = chest.name
    entity.max_health = chest.health
    entity.inventory_size = chest.inventory_size
        
    entity.picture.layers[1].filename = "__darkstar-logistics__/graphics/entity/" .. chest.name .. "/chest.png"
    entity.picture.layers[1].hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. chest.name .. "/hr-chest.png"

    item.name = chest.name
    item.icon = "__darkstar-logistics__/graphics/icons/" .. chest.name .. ".png"
    item.place_result = chest.name
    item.order = chest.order
    item.subgroup = "ds-storage"
    
    data:extend({ entity, item,
    {
        type = "recipe",
        name = chest.name,
        enabled = true,
        ingredients = chest.ingredients,
        result = chest.name
    }})
end