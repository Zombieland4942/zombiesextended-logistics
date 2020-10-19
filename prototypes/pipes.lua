
local entity_base = util.table.deepcopy(data.raw["pipe"]["pipe"])
local item_base = util.table.deepcopy(data.raw["item"]["pipe"])

for x, pipe in pairs(pipes) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = pipe.name    
    entity.icon = "__zombiesextended-logistics__/graphics/icons/" .. pipe.name .. ".png"
    entity.minable.result = pipe.name
    entity.max_health = pipe.health
    entity.next_upgrade = pipe.next_upgrade

    entity.pictures.straight_vertical_single.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-straight-vertical-single.png"
    entity.pictures.straight_vertical_single.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-straight-vertical-single.png"
    entity.pictures.straight_vertical.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-straight-vertical.png"
    entity.pictures.straight_vertical.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-straight-vertical.png"
    entity.pictures.straight_vertical_window.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-straight-vertical-window.png"
    entity.pictures.straight_vertical_window.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-straight-vertical-window.png"
    entity.pictures.straight_horizontal_window.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-straight-horizontal-window.png"
    entity.pictures.straight_horizontal_window.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-straight-horizontal-window.png"
    entity.pictures.straight_horizontal.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-straight-horizontal.png"
    entity.pictures.straight_horizontal.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-straight-horizontal.png"
    entity.pictures.corner_up_right.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-corner-up-right.png"
    entity.pictures.corner_up_right.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-corner-up-right.png"
    entity.pictures.corner_up_left.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-corner-up-left.png"
    entity.pictures.corner_up_left.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-corner-up-left.png"
    entity.pictures.corner_down_right.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-corner-down-right.png"
    entity.pictures.corner_down_right.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-corner-down-right.png"
    entity.pictures.corner_down_left.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-corner-down-left.png"
    entity.pictures.corner_down_left.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-corner-down-left.png"
    entity.pictures.t_up.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-t-up.png"
    entity.pictures.t_up.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-t-up.png"
    entity.pictures.t_down.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-t-down.png"
    entity.pictures.t_down.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-t-down.png"
    entity.pictures.t_right.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-t-right.png"
    entity.pictures.t_right.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-t-right.png"
    entity.pictures.t_left.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-t-left.png"
    entity.pictures.t_left.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-t-left.png"
    entity.pictures.cross.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-cross.png"
    entity.pictures.cross.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-cross.png"
    entity.pictures.ending_up.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-ending-up.png"
    entity.pictures.ending_up.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-ending-up.png"
    entity.pictures.ending_down.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-ending-down.png"
    entity.pictures.ending_down.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-ending-down.png"
    entity.pictures.ending_right.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-ending-right.png"
    entity.pictures.ending_right.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-ending-right.png"
    entity.pictures.ending_left.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/pipe-ending-left.png"
    entity.pictures.ending_left.hr_version.filename = "__zombiesextended-logistics__/graphics/entity/" .. pipe.name .. "/hr-pipe-ending-left.png"

    item.name = pipe.name
    item.icon = "__zombiesextended-logistics__/graphics/icons/" .. pipe.name .. ".png"
    item.place_result = pipe.name
    item.order = pipe.order
    item.subgroup = "ds-storage"

    table.insert(data.raw["technology"][pipe.technology].effects, { type = "unlock-recipe", recipe = pipe.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = pipe.name,
        enabled = false,
        ingredients = pipe.ingredients,
        result = pipe.name
    }})
end