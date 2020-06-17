
local entity_base = util.table.deepcopy(data.raw["container"]["steel-chest"])
local item_base = util.table.deepcopy(data.raw["item"]["steel-chest"])

for x, chest in pairs(chests) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = chest.name    
    --entity.icon = "__darkstar-logistics__/graphics/icons/" .. chest.name .. ".png"
    entity.minable.result = chest.name
    entity.max_health = chest.health
    entity.inventory_size = chest.inventory_size
        
    item.name = chest.name
    --item.icon = "__darkstar-logistics__/graphics/icons/" .. chest.name .. ".png"
    item.place_result = chest.name
    item.order = chest.order
    item.subgroup = "ds-storage"
    
    table.insert(data.raw["technology"][chest.technology].effects, { type = "unlock-recipe", recipe = chest.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = chest.name,
        enabled = false,
        ingredients = chest.ingredients,
        result = chest.name
    }})
end