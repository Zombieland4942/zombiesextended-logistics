require ("prototypes.pipe_covers")

local science_t1 = {{"automation-science-pack",1}}
local science_t2 = {{"automation-science-pack",1},{"logistic-science-pack",1}}
local science_t3 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1}}
local science_t4 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1}}
local science_t5 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1}}
local science_t6 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1},{"space-science-pack",1}}

technologies = {
    { order = "a-a-a", name = "high-teir-logistics-mk1", count = 500, time = 60, prerequisite = {"logistics-3"}, ingredients = science_t4 },
    { order = "a-a-a", name = "high-teir-logistics-mk2", count = 1000, time = 60, prerequisite = {"high-teir-logistics-mk1"}, ingredients = science_t5 },

    { order = "a-a-a", name = "high-teir-inserters-mk1", count = 500, time = 60, prerequisite = {"complex-processing-unit","fast-inserter","stack-inserter"}, ingredients = science_t3 },
    { order = "a-a-a", name = "high-teir-inserters-mk2", count = 1000, time = 60, prerequisite = {"high-teir-inserters-mk1"}, ingredients = science_t4 },    

    { order = "a-a-a", name = "high-teir-trains-mk1", count = 200, time = 60, prerequisite = {"complex-processing-unit","railway"}, ingredients = science_t4 },
    { order = "a-a-a", name = "high-teir-trains-mk2", count = 1000, time = 60, prerequisite = {"high-teir-trains-mk1"}, ingredients = science_t4 },

    { order = "a-a-a", name = "large-logistic-containers", count = 1000, time = 60, prerequisite = {"logistic-system"}, ingredients = science_t4 },

    { order = "a-a-a", name = "advanced-robots-mk1", count = 500, time = 60, prerequisite = {"complex-processing-unit","construction-robotics"}, ingredients = science_t4 },
    { order = "a-a-a", name = "advanced-robots-mk2", count = 1000, time = 60, prerequisite = {"advanced-robots-mk1"}, ingredients = science_t5 },   

    { order = "a-a-a", name = "fluid-handling-mk1", count = 200, time = 60, prerequisite = {"fluid-handling"}, ingredients = science_t3 },
    { order = "a-a-a", name = "fluid-handling-mk2", count = 200, time = 60, prerequisite = {"fluid-handling-mk1"}, ingredients = science_t4 },
}

-- Need to mod some vanilla items in order for the upgrade planner to work
data.raw["transport-belt"]["express-transport-belt"].fast_replaceable_group = "transport-belt"
data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "transport-belt-mk1"
data.raw["underground-belt"]["express-underground-belt"].fast_replaceable_group = "transport-belt"
data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "underground-belt-mk1"
data.raw["splitter"]["express-splitter"].fast_replaceable_group = "transport-belt"
data.raw["splitter"]["express-splitter"].next_upgrade = "splitter-mk1"
data.raw["inserter"]["fast-inserter"].fast_replaceable_group = "inserter"
data.raw["inserter"]["fast-inserter"].next_upgrade = "fast-inserter-mk1"
data.raw["inserter"]["filter-inserter"].fast_replaceable_group = "inserter"
data.raw["inserter"]["filter-inserter"].next_upgrade = "fast-filter-inserter-mk1"
data.raw["inserter"]["long-handed-inserter"].fast_replaceable_group = "inserter"
data.raw["inserter"]["long-handed-inserter"].next_upgrade = "fastlong-inserter-mk1"
data.raw["inserter"]["stack-inserter"].fast_replaceable_group = "inserter"
data.raw["inserter"]["stack-inserter"].next_upgrade = "stack-inserter-mk1"
data.raw["inserter"]["stack-filter-inserter"].fast_replaceable_group = "inserter"
data.raw["inserter"]["stack-filter-inserter"].next_upgrade = "stack-filter-inserter-mk1"
data.raw["offshore-pump"]["offshore-pump"].fast_replaceable_group = "offshore-pump"
data.raw["offshore-pump"]["offshore-pump"].next_upgrade = "offshore-pump-mk1"
data.raw["container"]["steel-chest"].fast_replaceable_group = "container"
data.raw["container"]["steel-chest"].next_upgrade = "chest-mk1"
data.raw["logistic-container"]["logistic-chest-active-provider"].fast_replaceable_group = "container"
data.raw["logistic-container"]["logistic-chest-active-provider"].next_upgrade = "large-logistic-container-active-provider"
data.raw["logistic-container"]["logistic-chest-passive-provider"].fast_replaceable_group = "container"
data.raw["logistic-container"]["logistic-chest-passive-provider"].next_upgrade = "large-logistic-container-passive-provider"
data.raw["logistic-container"]["logistic-chest-storage"].fast_replaceable_group = "container"
data.raw["logistic-container"]["logistic-chest-storage"].next_upgrade = "large-logistic-container-storage"
data.raw["logistic-container"]["logistic-chest-buffer"].fast_replaceable_group = "container"
data.raw["logistic-container"]["logistic-chest-buffer"].next_upgrade = "large-logistic-container-buffer"
data.raw["logistic-container"]["logistic-chest-requester"].fast_replaceable_group = "container"
data.raw["logistic-container"]["logistic-chest-requester"].next_upgrade = "large-logistic-container-requester"
data.raw["roboport"]["roboport"].fast_replaceable_group = "roboport"
data.raw["roboport"]["roboport"].next_upgrade = "roboport-mk1"
data.raw["storage-tank"]["storage-tank"].fast_replaceable_group = "storage-tank"
data.raw["storage-tank"]["storage-tank"].next_upgrade = "storage-tank-mk1"
data.raw["pipe"]["pipe"].fast_replaceable_group = "pipe"
data.raw["pipe"]["pipe"].next_upgrade = "pipe-mk1"
data.raw["pipe-to-ground"]["pipe-to-ground"].fast_replaceable_group = "pipe"
data.raw["pipe-to-ground"]["pipe-to-ground"].next_upgrade = "pipe-to-ground-mk1"

transport_belts = {
    { order = "a", name = "transport-belt-mk1", health = 200, speed = 0.125, next_upgrade = "transport-belt-mk2", ingredients = { {"express-transport-belt", 2},{"vibranium-plate", 2} }, technology = "high-teir-logistics-mk1" },
    { order = "b", name = "transport-belt-mk2", health = 230, speed = 0.1875, next_upgrade = "", ingredients = { {"transport-belt-mk1", 2},{"vibranium-plate", 5} }, technology = "high-teir-logistics-mk2" },
}

underground_belts = {
    { order = "a", name = "underground-belt-mk1", health = 200, speed = 0.125, reach = 18, belt_name = "transport-belt-mk1", next_upgrade = "underground-belt-mk2", ingredients = { {"express-underground-belt", 2},{"vibranium-plate", 2} }, technology = "high-teir-logistics-mk1" },
    { order = "b", name = "underground-belt-mk2", health = 230, speed = 0.1875, reach = 36, belt_name = "transport-belt-mk2", next_upgrade = "", ingredients = { {"underground-belt-mk1", 2},{"vibranium-plate", 5}}, technology = "high-teir-logistics-mk2" },
}

splitters = {
    { order = "a", name = "splitter-mk1", health = 200, speed = 0.125, belt_name = "transport-belt-mk1", next_upgrade = "splitter-mk2", ingredients = { {"express-splitter", 2},{"vibranium-plate", 2} }, technology = "high-teir-logistics-mk1" },
    { order = "b", name = "splitter-mk2", health = 230, speed = 0.1875, belt_name = "transport-belt-mk2", next_upgrade = "", ingredients = { {"splitter-mk1", 2},{"vibranium-plate", 5} }, technology = "high-teir-logistics-mk2" },
}

loaders = {
    { order = "a", name = "loader-mk1", speed = 0.125, belt_name = "transport-belt-mk1" },
    { order = "b", name = "loader-mk2", speed = 0.1875, belt_name = "transport-belt-mk2" },
}

fast_inserters = {
    { order = "a", name = "fast-inserter-mk1", health = 180, speed = 0.08, energy_KJ = 14, energy_drain_kw = 1, next_upgrade = "fast-inserter-mk2", ingredients = { {"fast-inserter", 2},{"complex-processing-unit", 2} }, technology = "high-teir-inserters-mk1" },
    { order = "b", name = "fast-inserter-mk2", health = 200, speed = 0.16, energy_KJ = 28, energy_drain_kw = 2, next_upgrade = "", ingredients = { {"fast-inserter-mk1", 2},{"complex-processing-unit", 5} }, technology = "high-teir-inserters-mk2" },
}

fast_filter_inserters = {
    { order = "a", name = "fast-filter-inserter-mk1", health = 180, speed = 0.08, energy_KJ = 14, energy_drain_kw = 1, next_upgrade = "fast-filter-inserter-mk2", ingredients = { {"filter-inserter", 1},{"fast-inserter", 1},{"complex-processing-unit", 2} }, technology = "high-teir-inserters-mk1" },
    { order = "b", name = "fast-filter-inserter-mk2", health = 200, speed = 0.16, energy_KJ = 28, energy_drain_kw = 2, next_upgrade = "", ingredients = { {"fast-filter-inserter-mk1", 2},{"complex-processing-unit", 5} }, technology = "high-teir-inserters-mk2" },
}

fastlong_inserters = {
    { order = "a", name = "fastlong-inserter-mk1", health = 180, speed = 0.04, energy_KJ = 10, energy_drain_kw = 0.7, next_upgrade = "fastlong-inserter-mk2", ingredients = { {"long-handed-inserter", 1},{"fast-inserter", 1},{"complex-processing-unit", 2} }, technology = "high-teir-inserters-mk1" },
    { order = "b", name = "fastlong-inserter-mk2", health = 200, speed = 0.08, energy_KJ = 15, energy_drain_kw = 1, next_upgrade = "", ingredients = { {"fastlong-inserter-mk1", 2},{"complex-processing-unit", 5} }, technology = "high-teir-inserters-mk2" },
}

stack_inserters = {
    { order = "a", name = "stack-inserter-mk1", health = 190, speed = 0.08, energy_KJ = 30, energy_drain_kw = 2, next_upgrade = "stack-inserter-mk2", ingredients = { {"stack-inserter", 2},{"complex-processing-unit", 2} }, technology = "high-teir-inserters-mk1" },
    { order = "b", name = "stack-inserter-mk2", health = 210, speed = 0.16, energy_KJ = 40, energy_drain_kw = 4, next_upgrade = "", ingredients = { {"stack-inserter-mk1", 2},{"complex-processing-unit", 5} }, technology = "high-teir-inserters-mk2" },
}

stack_filter_inserters = {
    { order = "a", name = "stack-filter-inserter-mk1", health = 190, speed = 0.08, energy_KJ = 30, energy_drain_kw = 2, next_upgrade = "stack-filter-inserter-mk2", ingredients = { {"stack-filter-inserter", 1},{"stack-inserter", 1},{"complex-processing-unit", 5} }, technology = "high-teir-inserters-mk1" },
    { order = "b", name = "stack-filter-inserter-mk2", health = 210, speed = 0.16, energy_KJ = 40, energy_drain_kw = 4, next_upgrade = "", ingredients = { {"stack-filter-inserter-mk1", 2},{"complex-processing-unit", 2} }, technology = "high-teir-inserters-mk2" },
}

stack_long_inserters = {
    --{ order = "c-a", name = "stack-long-inserter-mk1", health = 180, speed = 0.04, energy_KJ = 30, energy_drain_kw = 2, ingredients = { {"long-handed-inserter", 1},{"stack-inserter", 1},{"complex-processing-unit", 2} }, technology = "high-teir-inserters-mk1" },
    --{ order = "c-b", name = "stack-long-inserter-mk2", health = 200, speed = 0.08, energy_KJ = 35, energy_drain_kw = 4, ingredients = { {"stack-long-inserter-mk1", 2},{"complex-processing-unit", 5} }, technology = "high-teir-inserters-mk2" },
}

offshore_pumps = {
    { order = "a", name = "offshore-pump-mk1", health = 150, pumping_size = 40, next_upgrade = "offshore-pump-mk2", ingredients = { {"offshore-pump", 2} }, technology = "fluid-handling-mk1" },
    { order = "b", name = "offshore-pump-mk2", health = 300, pumping_size = 60, next_upgrade = "", ingredients = { {"offshore-pump-mk1", 2} }, technology = "fluid-handling-mk2" },
}

locomotives = {
    { order = "a", name = "locomotive-mk1", health = 1500, weight = 1500, max_speed = 1.4, max_power_kw = 800, breaking_force = 15, friction_force = 0.4, equipment_grid = "xxl-equipment-grid", ingredients = { {"locomotive", 2},{"complex-processing-unit", 10} }, technology = "high-teir-trains-mk1" },
    { order = "b", name = "locomotive-mk2", health = 2000, weight = 1000, max_speed = 1.8, max_power_kw = 1600, breaking_force = 25, friction_force = 0.2, equipment_grid = "xxxl-equipment-grid", ingredients = { {"locomotive-mk1", 2},{"complex-processing-unit", 20} }, technology = "high-teir-trains-mk2" },
}

cargo_wagons = {
    { order = "a", name = "cargo-wagon-mk1", health = 1200, cargo_size = 80, weight = 800, max_speed = 1.7, breaking_force = 4, equipment_grid = "xxl-equipment-grid", ingredients = { {"cargo-wagon", 2},{"vibranium-plate", 7} }, technology = "high-teir-trains-mk1" },
    { order = "b", name = "cargo-wagon-mk2", health = 2400, cargo_size = 160, weight = 600, max_speed = 1.9, breaking_force = 5, equipment_grid = "xxxl-equipment-grid", ingredients = { {"cargo-wagon-mk1", 2},{"vibranium-plate", 14} }, technology = "high-teir-trains-mk2" },
}

fluid_wagons = {
    { order = "a", name = "fluid-wagon-mk1", health = 1200, capacity = 50000, weight = 800, max_speed = 1.7, breaking_force = 4, equipment_grid = "xxl-equipment-grid", ingredients = { {"fluid-wagon", 2},{"vibranium-plate", 7} }, technology = "high-teir-trains-mk1" },
    { order = "b", name = "fluid-wagon-mk2", health = 2400, capacity = 100000, weight = 600, max_speed = 1.9, breaking_force = 5, equipment_grid = "xxxl-equipment-grid", ingredients = { {"fluid-wagon-mk1", 2},{"vibranium-plate", 14} }, technology = "high-teir-trains-mk2" },
}

logistic_robots = {
    { order = "a", name = "logistic-robot-mk1", health = 200, max_payload_size = 4, speed = 0.12, max_energy_mj = 3, energy_per_move_kj = 5, ingredients = { {"logistic-robot", 2},{"complex-processing-unit", 7} }, technology = "advanced-robots-mk1" },
    { order = "b", name = "logistic-robot-mk2", health = 300, max_payload_size = 8, speed = 0.24, max_energy_mj = 6, energy_per_move_kj = 5, ingredients = { {"logistic-robot-mk1", 2},{"complex-processing-unit", 14} }, technology = "advanced-robots-mk2" },
}

construction_robots = {    
    { order = "a", name = "construction-robot-mk1", health = 200, max_payload_size = 4, speed = 0.12, max_energy_mj = 3, energy_per_move_kj = 5, ingredients = { {"construction-robot", 2},{"complex-processing-unit", 7} }, technology = "advanced-robots-mk1" },
    { order = "b", name = "construction-robot-mk2", health = 300, max_payload_size = 8, speed = 0.24, max_energy_mj = 6, energy_per_move_kj = 5, ingredients = { {"construction-robot-mk1", 2},{"complex-processing-unit", 14} }, technology = "advanced-robots-mk2" },
}

chests = {
    { order = "a", name = "chest-mk1", health = 400, inventory_size = 70, next_upgrade = "chest-mk2", ingredients = { {"gold-plate", 2} } },
    { order = "b", name = "chest-mk2", health = 600, inventory_size = 96, next_upgrade = "", ingredients = { {"vibranium-plate", 2} } },
}

logistic_containers ={
    { order = "a", name = "large-logistic-container-active-provider", type = "active-provider", health = 500, inventory_size = 96,    ingredients = { {"logistic-chest-active-provider", 1},{"chest-mk2", 1} }, technology = "large-logistic-containers" },
    { order = "b", name = "large-logistic-container-passive-provider", type = "passive-provider", health = 500, inventory_size = 96,  ingredients = { {"logistic-chest-passive-provider", 1},{"chest-mk2", 1} }, technology = "large-logistic-containers" },
    { order = "c", name = "large-logistic-container-storage", type = "storage", health = 500, inventory_size = 96,                    ingredients = { {"logistic-chest-storage", 1},{"chest-mk2", 1} }, technology = "large-logistic-containers" },
    { order = "d", name = "large-logistic-container-buffer", type = "buffer", health = 500, inventory_size = 96,                      ingredients = { {"logistic-chest-buffer", 1},{"chest-mk2", 1} }, technology = "large-logistic-containers" },
    { order = "e", name = "large-logistic-container-requester", type = "requester", health = 500, inventory_size = 96,                ingredients = { {"logistic-chest-requester", 1},{"chest-mk2", 1} }, technology = "large-logistic-containers" },
}

roboports = {
    { order = "a", name = "roboport-mk1", health = 1000, recharging_count = 2, input_MW = 16, buffer_MJ = 400, recharge_minimum_MJ = 80, energy_usage_KW = 100, charging_energy_KW = 2000, logistics_radius = 50, construction_radius = 110, next_upgrade = "roboport-mk2", ingredients = { {"roboport", 2},{"complex-processing-unit", 10} }, technology = "advanced-robots-mk1" },
    { order = "b", name = "roboport-mk2", health = 1500, recharging_count = 4, input_MW = 64, buffer_MJ = 800, recharge_minimum_MJ = 160, energy_usage_KW = 200, charging_energy_KW = 4000, logistics_radius = 100, construction_radius = 220, next_upgrade = "", ingredients = { {"roboport-mk1", 2},{"complex-processing-unit", 20} }, technology = "advanced-robots-mk2" },
}

storage_tanks = {
    { order = "a", name = "storage-tank-mk1", health = 800, fluid_size = 1000, pipe_covers = goldpipecovers(), next_upgrade = "storage-tank-mk2", ingredients = { {"gold-plate", 20} }, technology = "fluid-handling-mk1" },
    { order = "b", name = "storage-tank-mk2", health = 1600, fluid_size = 3000, pipe_covers = darkpipecovers(), next_upgrade = "", ingredients = { {"vibranium-plate", 20} }, technology = "fluid-handling-mk2" },
}

pipes = {
    { order = "a", name = "pipe-mk1", health = 300, next_upgrade = "pipe-mk2", ingredients = { {"gold-plate", 2} }, technology = "fluid-handling-mk1" },
    { order = "b", name = "pipe-mk2", health = 600, next_upgrade = "", ingredients = { {"vibranium-plate", 2} }, technology = "fluid-handling-mk2" },
}

pipe_to_grounds = {
    { order = "a", name = "pipe-to-ground-mk1", health = 300, distance = 20, pipe_covers = goldpipecovers(), next_upgrade = "pipe-to-ground-mk2", ingredients = { {"pipe-mk1",5},{"gold-plate",2} }, technology = "fluid-handling-mk1" },
    { order = "b", name = "pipe-to-ground-mk2", health = 600, distance = 40, pipe_covers = darkpipecovers(), next_upgrade = "", ingredients = { {"pipe-mk2",5},{"vibranium-plate",2} }, technology = "fluid-handling-mk2" },
}