
if deadlock then
    deadlock.add_tier({
        transport_belt      = "transport-belt-mk1",
        colour              = {r=10, g=225, b=25},
        underground_belt    = "underground-belt-mk1",
        technology          = "high-teir-logistics-mk1",
        order               = "d",
        beltbox_technology  = "high-teir-logistics-mk1",
        beltbox_ingredients = {{"express-transport-belt-beltbox", 1}, {"iron-gear-wheel", 30}, {"vibranium-plate", 20}},
        loader_ingredients  = {{"express-transport-belt-loader", 1}, {"iron-gear-wheel", 40}, {"vibranium-plate", 10}}  
    })

    deadlock.add_tier({
        transport_belt      = "transport-belt-mk2",
        colour              = {r=230, g=80, b=230},
        underground_belt    = "underground-belt-mk2",
        technology          = "high-teir-logistics-mk2",
        order               = "d",
        beltbox_technology  = "high-teir-logistics-mk2", 
        beltbox_ingredients = {{"transport-belt-mk1-beltbox", 1}, {"iron-gear-wheel", 40}, {"vibranium-plate", 25}},
        loader_ingredients  = {{"transport-belt-mk1-loader", 1}, {"iron-gear-wheel", 40}, {"vibranium-plate", 15}}
    })
end