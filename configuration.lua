
transport_belts = {
    { order = "a-a", name = "transport-belt-mk1", health = 200, speed = 0.125 },
    { order = "a-b", name = "transport-belt-mk2", health = 230, speed = 0.1875 },
}

underground_belts = {
    { order = "a-c", name = "underground-belt-mk1", health = 200, speed = 0.125, reach = 18, belt_name = "transport-belt-mk1" },
    { order = "a-d", name = "underground-belt-mk2", health = 230, speed = 0.1875, reach = 36, belt_name = "transport-belt-mk2" },
}

splitters = {
    { order = "a-e", name = "splitter-mk1", health = 200, speed = 0.125, belt_name = "transport-belt-mk1" },
    { order = "a-f", name = "splitter-mk2", health = 230, speed = 0.1875, belt_name = "transport-belt-mk2" },
}

loaders = {
    { order = "a-g", name = "loader-mk1", speed = 0.125, belt_name = "transport-belt-mk1" },
    { order = "a-h", name = "loader-mk2", speed = 0.1875, belt_name = "transport-belt-mk2" },
}

fast_inserters = {
    { order = "a-a", name = "fast-inserter-mk1", health = 180, speed = 0.08, energy_KJ = 14, energy_drain_kw = 1 },
    { order = "a-b", name = "fast-inserter-mk2", health = 200, speed = 0.16, energy_KJ = 28, energy_drain_kw = 2 },
}

fast_filter_inserters = {
    { order = "a-c", name = "fast-filter-inserter-mk1", health = 180, speed = 0.08, energy_KJ = 14, energy_drain_kw = 1 },
    { order = "a-d", name = "fast-filter-inserter-mk2", health = 200, speed = 0.16, energy_KJ = 28, energy_drain_kw = 2 },
}

fastlong_inserters = {
    { order = "a-e", name = "fastlong-inserter-mk1", health = 180, speed = 0.04, energy_KJ = 10, energy_drain_kw = 0.7 },
    { order = "a-f", name = "fastlong-inserter-mk2", health = 200, speed = 0.08, energy_KJ = 15, energy_drain_kw = 1 },
}

stack_inserters = {
    { order = "a-a", name = "stack-inserter-mk1", health = 190, speed = 0.08, energy_KJ = 30, energy_drain_kw = 2 },
    { order = "a-b", name = "stack-inserter-mk2", health = 210, speed = 0.16, energy_KJ = 40, energy_drain_kw = 4 },
}

stack_filter_inserters = {
    { order = "a-c", name = "stack-filter-inserter-mk1", health = 190, speed = 0.08, energy_KJ = 30, energy_drain_kw = 2 },
    { order = "a-d", name = "stack-filter-inserter-mk2", health = 210, speed = 0.16, energy_KJ = 40, energy_drain_kw = 4 },
}

stack_long_inserters = {
    { order = "a-e", name = "stack-long-inserter-mk1", health = 180, speed = 0.04, energy_KJ = 30, energy_drain_kw = 2 },
    { order = "a-f", name = "stack-long-inserter-mk2", health = 200, speed = 0.08, energy_KJ = 35, energy_drain_kw = 4 },
}

chests = {
    { order = "a-g", name = "chest-mk1", health = 180, inventory_size = 3 },
}