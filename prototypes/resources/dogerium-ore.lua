local resource_autoplace = require("__core__/lualib/resource-autoplace")

-- Adding dogerium-ore
data:extend({
  {
    type = "resource",
    name = "dogerium-ore",
    icon = don_resources_icons_path .. "dogerium-ore.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-neutral" },
    order = "a-b-a",
    subgroup = "raw-resource",
    tree_removal_probability = 0,
    tree_removal_max_distance = 0,
    minable = {
      hardness = 1,
      mining_particle = "dogerium-ore-particle",
      mining_time = 1,
      result = "raw-dogerium-ore",
    },
    collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "dogerium-ore",
      order = "d",
      base_density = 3.0,
      base_spots_per_km2 = 0.85,
      has_starting_area_placement = true,
      random_spot_size_minimum = 0.75,
      random_spot_size_maximum = 2,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 1.0,
      starting_rq_factor_multiplier = 1.2,
    }),
    stage_counts = { 15000, 9500, 5500, 2900, 1300, 400, 150, 80 },
    stages = {
      sheet = {
        filename = don_resources_sprites_path .. "dogerium-ore/dogerium-ore.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = don_resources_sprites_path .. "dogerium-ore/hr-dogerium-ore.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
        },
      },
    },
    stages_effect = {
      sheet = {
        filename = don_resources_sprites_path .. "dogerium-ore/dogerium-ore-glow.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        animation_speed = 3,
        variation_count = 8,
        draw_as_glow = true,
        hr_version = {
          filename = don_resources_sprites_path .. "dogerium-ore/hr-dogerium-ore-glow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          animation_speed = 3,
          variation_count = 8,
          scale = 0.5,
          draw_as_glow = true,
        },
      },
    },
    effect_animation_period = 5,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 5,
    min_effect_alpha = 0.2,
    max_effect_alpha = 0.3,
    map_color = { r = 0.6, g = 0.3, b = 1 },
    mining_visualisation_tint = { r = 0.258, g = 0.960, b = 0.529 },
  },
  {
    type = "autoplace-control",
    name = "dogerium-ore",
    localised_name = { "", "[entity=dogerium-ore] ", { "autoplace-control-names.dogerium-ore" } },
    order = "k-a",
    richness = true,
    category = "resource",
  },
  {
    type = "noise-layer",
    name = "dogerium-ore",
  },
})
