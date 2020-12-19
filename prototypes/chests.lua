
local entity_base = util.table.deepcopy(data.raw["container"]["steel-chest"])
local item_base = util.table.deepcopy(data.raw["item"]["steel-chest"])

local subgroup = "ds-storage"

if settings.startup["zombies-use-seperate-tab"].value == false then
    subgroup = item_base.subgroup
end

for x, chest in pairs(chests) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = chest.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. chest.name .. ".png"
    entity.minable.result = chest.name
    entity.max_health = chest.health
    entity.inventory_size = chest.inventory_size    
    entity.next_upgrade = chest.next_upgrade
        
    entity.picture.layers[1].filename = "__zombiesextended-logistics__/graphics/entity/" .. chest.name .. "/chest.png"
    entity.picture.layers[1].hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. chest.name .. "/hr-chest.png"

    item.name = chest.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. chest.name .. ".png"
    item.place_result = chest.name
    item.order = item.order .. chest.order
    item.subgroup = subgroup
    
    data:extend({ entity, item,
    {
        type = "recipe",
        name = chest.name,
        enabled = true,
        ingredients = chest.ingredients,
        result = chest.name
    }})
end