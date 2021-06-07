if remote.interfaces["loader-redux"] then
    for index, force in pairs(game.forces) do
        local technologies = force.technologies
        local recipes = force.recipes

        if technologies["high-teir-logistics-mk1"] and technologies["high-teir-logistics-mk1"].researched then
            recipes["transport-belt-mk1-loader"].enabled = true
            recipes["transport-belt-mk1-loader"].reload()
        end
        if technologies["high-teir-logistics-mk2"] and technologies["high-teir-logistics-mk2"].researched then
            recipes["transport-belt-mk2-loader"].enabled = true
            recipes["transport-belt-mk2-loader"].reload()
        end
    end
end