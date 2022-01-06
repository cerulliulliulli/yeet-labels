local function logistic_owl_sprite(robot)
    local logisticOwl = data.raw["logistic-robot"][robot]

    -- Main sprites for the Logistic-Owl's movement.

    local sprites = {
        filename = "__yeet-labels__/graphics/entity/logistic-owl/logistic-owl-hr.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 84,
        frame_count = 1,
        direction_count = 16,
        scale = 0.5
    }

    -- Shadow sprites for the Logistic-Owl's movement.

    local shadows = {
        filename = "__yeet-labels__/graphics/entity/logistic-owl/logistic-owl-shadows-hr.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 84,
        frame_count = 1,
        shift = util.by_pixel(31.75, 19.75),
        direction_count = 16,
        scale = 0.5,
        y = 57,
        draw_as_shadow = true
    }

    logisticOwl.idle = sprites
    logisticOwl.idle_with_cargo = sprites
    logisticOwl.in_motion = sprites
    logisticOwl.in_motion_with_cargo = sprites

    logisticOwl.shadow_idle = shadows
    logisticOwl.shadow_idle_with_cargo = shadows
    logisticOwl.shadow_in_motion = shadows
    logisticOwl.shadow_in_motion_with_cargo = shadows

    logisticOwl.shadow_idle.y = shadows.height
    logisticOwl.shadow_in_motion_with_cargo.y = shadows.height * 2
    logisticOwl.shadow_in_motion.y = shadows.height * 3

    -- Preview icon for inv.

    local icons = {
        {
            icon = "__yeet-labels__/graphics/icons/logistic-owl.png",
            icon_size = 30
        }
    }

    logisticOwl.icons = icons
    data.raw["item"][robot].icons = icons
end

return logistic_owl_sprite