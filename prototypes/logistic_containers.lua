

for x, logistic_container in pairs(logistic_containers) do

    entity = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-" .. logistic_container.type])
    item = util.table.deepcopy(data.raw["item"]["logistic-chest-" .. logistic_container.type])

    entity.name = logistic_container.name    
    entity.icon = "__darkstar-logistics__/graphics/icons/" .. logistic_container.name .. ".png"
    entity.minable.result = logistic_container.name
    entity.logistic_mode = logistic_container.type
    entity.max_health = logistic_container.health
    entity.inventory_size = logistic_container.inventory_size

    entity.animation.layers[1].filename = "__darkstar-logistics__/graphics/entity/logistic-chest/" .. logistic_container.name .. ".png"
    entity.animation.layers[1].hr_version.filename = "__darkstar-logistics__/graphics/entity/logistic-chest/hr-" .. logistic_container.name .. ".png"

    item.name = logistic_container.name
    item.icon = "__darkstar-logistics__/graphics/icons/" .. logistic_container.name .. ".png"
    item.place_result = logistic_container.name
    item.order = logistic_container.order
    item.subgroup = "ds-robots"

    data:extend({ entity, item })
end