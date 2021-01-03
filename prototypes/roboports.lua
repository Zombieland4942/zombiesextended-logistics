
local entity_base = util.table.deepcopy(data.raw["roboport"]["roboport"])
local item_base = util.table.deepcopy(data.raw["item"]["roboport"])

local subgroup = "ds-robotports"

if settings.startup["zombies-use-seperate-tab"].value == false then
    subgroup = item_base.subgroup
end

for x, roboport in pairs(roboports) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = roboport.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. roboport.name .. ".png"
    entity.minable.result = roboport.name
    entity.max_health = roboport.health
    entity.next_upgrade = roboport.next_upgrade

    entity.energy_source.input_flow_limit = roboport.input_MW .. "MW"
    entity.energy_source.buffer_capacity = roboport.buffer_MJ .. "MJ"
    entity.recharge_minimum = roboport.recharge_minimum_MJ .. "MJ"
    entity.energy_usage = roboport.energy_usage_KW .. "kW"
    entity.charging_energy = roboport.charging_energy_KW .. "kW"
    entity.logistics_radius = roboport.logistics_radius
    entity.construction_radius = roboport.construction_radius

    entity.charging_offsets = {}
    
    for i=1,roboport.recharging_count do
        table.insert(entity.charging_offsets, {-1.5, -0.5})
        table.insert(entity.charging_offsets, {1.5, -0.5})
        table.insert(entity.charging_offsets, {1.5, 1.5})
        table.insert(entity.charging_offsets, {-1.5, 1.5})
    end

    entity.base.layers[1].filename = "__zombiesextended-logistics__/graphics/entity/" .. roboport.name .. "/roboport-base.png"
    entity.base.layers[1].hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. roboport.name .. "/hr-roboport-base.png"
    entity.base_patch.filename = "__zombiesextended-logistics__/graphics/entity/" .. roboport.name .. "/roboport-base-patch.png"
    entity.base_patch.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. roboport.name .. "/hr-roboport-base-patch.png"

    item.name = roboport.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. roboport.name .. ".png"
    item.place_result = roboport.name
    item.order = item.order .. roboport.order
    item.subgroup = subgroup

    table.insert(data.raw["technology"][roboport.technology].effects, { type = "unlock-recipe", recipe = roboport.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = roboport.name,
        enabled = false,
        energy_required = roboport.craft_time,
        ingredients = roboport.ingredients,
        result = roboport.name
    }})
end