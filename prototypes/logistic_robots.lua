
local entity_base = util.table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])
local item_base = util.table.deepcopy(data.raw["item"]["logistic-robot"])

for x, logistic_robot in pairs(logistic_robots) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = logistic_robot.name    
    entity.icon = "__darkstar-logistics__/graphics/icons/" .. logistic_robot.name .. ".png"
    entity.minable.result = logistic_robot.name
    entity.max_health = logistic_robot.health

    entity.max_energy = logistic_robot.max_energy_mj
    entity.speed = logistic_robot.speed
    entity.max_payload_size = logistic_robot.max_payload_size
    entity.max_energy = logistic_robot.max_energy_mj .. "MJ"    
    entity.energy_per_move = logistic_robot.energy_per_move_kj .. "kJ"    
    
    entity.idle.filename = "__darkstar-logistics__/graphics/entity/" .. logistic_robot.name .. "/logistic-robot.png"
    entity.idle.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. logistic_robot.name .. "/hr-logistic-robot.png"
    entity.idle_with_cargo.filename = "__darkstar-logistics__/graphics/entity/" .. logistic_robot.name .. "/logistic-robot.png"
    entity.idle_with_cargo.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. logistic_robot.name .. "/hr-logistic-robot.png"
    entity.in_motion.filename = "__darkstar-logistics__/graphics/entity/" .. logistic_robot.name .. "/logistic-robot.png"
    entity.in_motion.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. logistic_robot.name .. "/hr-logistic-robot.png"
    entity.in_motion_with_cargo.filename = "__darkstar-logistics__/graphics/entity/" .. logistic_robot.name .. "/logistic-robot.png"
    entity.in_motion_with_cargo.hr_version.filename = "__darkstar-logistics__/graphics/entity/" .. logistic_robot.name .. "/hr-logistic-robot.png"
    
    item.name = logistic_robot.name
    item.icon = "__darkstar-logistics__/graphics/icons/" .. logistic_robot.name .. ".png"
    item.place_result = logistic_robot.name
    item.order = logistic_robot.order
    item.subgroup = "ds-robots"

    table.insert(data.raw["technology"][logistic_robot.technology].effects, { type = "unlock-recipe", recipe = logistic_robot.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = logistic_robot.name,
        enabled = false,
        ingredients = logistic_robot.ingredients,
        result = logistic_robot.name
    }})
end