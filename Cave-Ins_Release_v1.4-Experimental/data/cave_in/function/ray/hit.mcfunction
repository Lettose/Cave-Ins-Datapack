# execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 0.5 ~ ~ ~ 0 0 0 0 1 force
# execute as @s run say found it!

tp @s ^ ^ ^

execute as @s[tag=random_cavein_ray] at @s align xyz positioned ~ ~250 ~ unless entity @e[tag=valid_support,distance=..12] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #falling_blocks if block ~ ~-1 ~ #permeable if block ~ ~-2 ~ #permeable run summon marker ~ ~249 ~ {Tags:["cave_in"]}
execute as @s[tag=support_ray] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ player_head run function cave_in:supports/check_block_placed
execute as @s[tag=support_ray] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ player_wall_head run function cave_in:supports/check_block_placed
execute as @s[tag=highlight_ray] at @s align xyz positioned ~ ~250 ~ unless entity @e[tag=valid_support,distance=..12] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #falling_blocks if block ~ ~-1 ~ #permeable if block ~ ~-2 ~ #permeable unless entity @e[tag=unsupported_particle,distance=..0.1] run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["unsupported_particle"]}
execute as @s[tag=highlight_ray] at @s align xyz positioned ~ ~250 ~ if entity @e[tag=valid_support,distance=..12] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #falling_blocks if block ~ ~-1 ~ #permeable if block ~ ~-2 ~ #permeable unless entity @e[tag=supported_particle,distance=..0.1] run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["supported_particle"]}
execute as @s[tag=tnt_ray] align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~249 ~ {Tags:["massive_cave_in","caused_by_tnt"]}
