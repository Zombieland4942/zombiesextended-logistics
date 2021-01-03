
local entity_base = util.table.deepcopy(data.raw["construction-robot"]["construction-robot"])
local item_base = util.table.deepcopy(data.raw["item"]["construction-robot"])

local subgroup = "ds-robotports"

if settings.startup["zombies-use-seperate-tab"].value == false then
    subgroup = item_base.subgroup
end

for x, construction_robot in pairs(construction_robots) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = construction_robot.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. construction_robot.name .. ".png"
    entity.minable.result = construction_robot.name
    entity.max_health = construction_robot.health

    entity.max_energy = construction_robot.max_energy_mj
    entity.speed = construction_robot.speed
    entity.max_payload_size = construction_robot.max_payload_size
    entity.max_energy = construction_robot.max_energy_mj .. "MJ"    
    entity.energy_per_move = construction_robot.energy_per_move_kj .. "kJ"    
    
    entity.idle.filename = "__zombiesextended-logistics__/graphics/entity/" .. construction_robot.name .. "/construction-robot.png"
    entity.idle.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. construction_robot.name .. "/hr-construction-robot.png"
    entity.in_motion.filename = "__zombiesextended-logistics__/graphics/entity/" .. construction_robot.name .. "/construction-robot.png"
    entity.in_motion.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. construction_robot.name .. "/hr-construction-robot.png"
    entity.working.filename = "__zombiesextended-logistics__/graphics/entity/" .. construction_robot.name .. "/construction-robot-working.png"
    entity.working.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. construction_robot.name .. "/hr-construction-robot-working.png"

    item.name = construction_robot.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. construction_robot.name .. ".png"
    item.place_result = construction_robot.name
    item.order = item.order .. construction_robot.order
    item.subgroup = subgroup

    table.insert(data.raw["technology"][construction_robot.technology].effects, { type = "unlock-recipe", recipe = construction_robot.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = construction_robot.name,
        enabled = false,
        energy_required = construction_robot.craft_time,
        ingredients = construction_robot.ingredients,
        result = construction_robot.name
    }})
end