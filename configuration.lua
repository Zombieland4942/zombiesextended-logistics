
transport_belts = {
    { order = "a-a", name = "transport-belt-mk1", health = 200, speed = 0.125 },
    { order = "a-b", name = "transport-belt-mk2", health = 230, speed = 0.1875 },
}

underground_belts = {
    { order = "b-a", name = "underground-belt-mk1", health = 200, speed = 0.125, reach = 18, belt_name = "transport-belt-mk1" },
    { order = "b-b", name = "underground-belt-mk2", health = 230, speed = 0.1875, reach = 36, belt_name = "transport-belt-mk2" },
}

splitters = {
    { order = "c-a", name = "splitter-mk1", health = 200, speed = 0.125, belt_name = "transport-belt-mk1" },
    { order = "c-b", name = "splitter-mk2", health = 230, speed = 0.1875, belt_name = "transport-belt-mk2" },
}

loaders = {
    { order = "d-a", name = "loader-mk1", speed = 0.125, belt_name = "transport-belt-mk1" },
    { order = "d-b", name = "loader-mk2", speed = 0.1875, belt_name = "transport-belt-mk2" },
}

fast_inserters = {
    { order = "a-a", name = "fast-inserter-mk1", health = 180, speed = 0.08, energy_KJ = 14, energy_drain_kw = 1 },
    { order = "a-b", name = "fast-inserter-mk2", health = 200, speed = 0.16, energy_KJ = 28, energy_drain_kw = 2 },
}

fast_filter_inserters = {
    { order = "b-a", name = "fast-filter-inserter-mk1", health = 180, speed = 0.08, energy_KJ = 14, energy_drain_kw = 1 },
    { order = "b-b", name = "fast-filter-inserter-mk2", health = 200, speed = 0.16, energy_KJ = 28, energy_drain_kw = 2 },
}

fastlong_inserters = {
    { order = "c-a", name = "fastlong-inserter-mk1", health = 180, speed = 0.04, energy_KJ = 10, energy_drain_kw = 0.7 },
    { order = "c-b", name = "fastlong-inserter-mk2", health = 200, speed = 0.08, energy_KJ = 15, energy_drain_kw = 1 },
}

stack_inserters = {
    { order = "a-a", name = "stack-inserter-mk1", health = 190, speed = 0.08, energy_KJ = 30, energy_drain_kw = 2 },
    { order = "a-b", name = "stack-inserter-mk2", health = 210, speed = 0.16, energy_KJ = 40, energy_drain_kw = 4 },
}

stack_filter_inserters = {
    { order = "b-a", name = "stack-filter-inserter-mk1", health = 190, speed = 0.08, energy_KJ = 30, energy_drain_kw = 2 },
    { order = "b-b", name = "stack-filter-inserter-mk2", health = 210, speed = 0.16, energy_KJ = 40, energy_drain_kw = 4 },
}

stack_long_inserters = {
    { order = "c-a", name = "stack-long-inserter-mk1", health = 180, speed = 0.04, energy_KJ = 30, energy_drain_kw = 2 },
    { order = "c-b", name = "stack-long-inserter-mk2", health = 200, speed = 0.08, energy_KJ = 35, energy_drain_kw = 4 },
}

chests = {
    { order = "a-a", name = "chest-mk1", health = 180, inventory_size = 90 },
}

storage_tanks = {
    { order = "a-b", name = "store-tank-mk1", health = 600, fluid_size = 1000 },
    { order = "a-c", name = "store-tank-mk2", health = 800, fluid_size = 3000 },
}

offshore_pumps = {
    { order = "c-a", name = "offshore-pump-mk1", health = 150, pumping_size = 40 },
    { order = "c-b", name = "offshore-pump-mk2", health = 300, pumping_size = 60 },
}

locomotives = {
    { order = "a-a", name = "locomotive-mk1", health = 1500, weight = 1500, max_speed = 1.4, max_power_kw = 800, breaking_force = 15, friction_force = 0.4 },
    { order = "a-b", name = "locomotive-mk2", health = 2000, weight = 1000, max_speed = 1.6, max_power_kw = 1000, breaking_force = 20, friction_force = 0.3 },
}

cargo_wagons = {
    { order = "b-a", name = "cargo-wagon-mk1", health = 1200, cargo_size = 80, weight = 800, max_speed = 1.7, breaking_force = 4 },
    { order = "b-b", name = "cargo-wagon-mk2", health = 2400, cargo_size = 160, weight = 600, max_speed = 1.9, breaking_force = 5 },
}

fluid_wagons = {
    { order = "c-a", name = "fluid-wagon-mk1", health = 1200, capacity = 50000, weight = 800, max_speed = 1.7, breaking_force = 4 },
    { order = "c-b", name = "fluid-wagon-mk2", health = 2400, capacity = 100000, weight = 600, max_speed = 1.9, breaking_force = 5 },
}
