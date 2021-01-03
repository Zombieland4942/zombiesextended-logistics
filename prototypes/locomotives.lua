
local entity_base = util.table.deepcopy(data.raw["locomotive"]["locomotive"])
local item_base = util.table.deepcopy(data.raw["item-with-entity-data"]["locomotive"])

local subgroup = "ds-trains"

if settings.startup["zombies-use-seperate-tab"].value == false then
    subgroup = item_base.subgroup
end

for x, locomotive in pairs(locomotives) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = locomotive.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. locomotive.name .. ".png"
    entity.minable.result = locomotive.name
    entity.max_health = locomotive.health
    entity.weight = locomotive.weight
    entity.max_speed = locomotive.max_speed
    entity.max_power = locomotive.max_power_kw .. "kW"
    entity.braking_force = locomotive.breaking_force
    entity.friction_force = locomotive.friction_force
    entity.equipment_grid = locomotive.equipment_grid
    entity.next_upgrade = locomotive.next_upgrade

    item.name = locomotive.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. locomotive.name .. ".png"
    item.place_result = locomotive.name
    item.order = item.order .. locomotive.order
    item.subgroup = subgroup
    
    table.insert(data.raw["technology"][locomotive.technology].effects, { type = "unlock-recipe", recipe = locomotive.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = locomotive.name,
        enabled = false,
        energy_required = locomotive.craft_time,
        ingredients = locomotive.ingredients,
        result = locomotive.name
    }})
end