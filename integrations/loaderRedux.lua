if mods["LoaderRedux"] then

    local subgroup = "ds-belt"

    if settings.startup["zombies-use-seperate-tab"].value == false then
        subgroup = data.raw["item"]["express-transport-belt"].subgroup
    end

    local mk1_entity = make_loader_entity("transport-belt-mk1-loader", data.raw["transport-belt"]["transport-belt-mk1"], util.color("16f263d9"), "transport-belt-mk2-loader")
    local mk2_entity = make_loader_entity("transport-belt-mk2-loader", data.raw["transport-belt"]["transport-belt-mk2"], util.color("a510e5d9"), nil)

    local mk1_item = make_loader_item("transport-belt-mk1-loader", subgroup, "d-d", util.color("16f263d9"))
    local mk2_item = make_loader_item("transport-belt-mk2-loader", subgroup, "d-e", util.color("a510e5d9"))

    data:extend(
        {
            mk1_entity, mk2_entity, mk1_item, mk2_item,
            {
                type = "recipe",
                name = "transport-belt-mk1-loader",
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"express-loader", 1},
                    {"vibranium-plate", 10},
                    {"processing-unit", 1}
                },
                result = "transport-belt-mk1-loader"
            },
            {
                type = "recipe",
                name = "transport-belt-mk2-loader",
                enabled = false,
                energy_required = 4,
                ingredients = {
                    {"transport-belt-mk1-loader", 1},                    
                    {"vibranium-plate", 10},
                    {"processing-unit", 10}
                },
                result = "transport-belt-mk2-loader"
            }
        }
    )

    table.insert(data.raw.technology["high-teir-logistics-mk1"].effects, {type = "unlock-recipe", recipe = "transport-belt-mk1-loader"})
    table.insert(data.raw.technology["high-teir-logistics-mk2"].effects, {type = "unlock-recipe", recipe = "transport-belt-mk2-loader"})
end