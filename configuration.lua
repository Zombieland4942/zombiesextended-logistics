
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
    { order = "b-a", name = "fast-inserter-mk1", health = 180, speed = 0.08, energy_KJ = 14, energy_drain_kw = 1 },
    { order = "b-b", name = "fast-inserter-mk2", health = 200, speed = 0.16, energy_KJ = 28, energy_drain_kw = 2 },
}