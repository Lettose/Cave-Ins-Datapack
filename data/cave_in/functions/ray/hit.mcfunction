#particle dust 1 0 0 0.5 ^ ^ ^ 0.2 0.2 0.2 0 20 force
#execute as @s run say found it!

tp @s ^ ^ ^

execute as @s[tag=!tnt_ray] unless entity @s[tag=highlight_ray] run function cave_in:supports/create_new_support
execute as @s[tag=highlight_ray] at @s align xyz positioned ~ ~250 ~ unless entity @e[tag=valid_support,distance=..12] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #falling_blocks if block ~ ~-1 ~ #permeable if block ~ ~-2 ~ #permeable unless entity @e[tag=unsupported_particle,distance=..0.1] run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["unsupported_particle"]}
execute as @s[tag=highlight_ray] at @s align xyz positioned ~ ~250 ~ if entity @e[tag=valid_support,distance=..12] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #falling_blocks if block ~ ~-1 ~ #permeable if block ~ ~-2 ~ #permeable unless entity @e[tag=supported_particle,distance=..0.1] run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["supported_particle"]}
execute as @s[tag=tnt_ray] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["massive_cave_in"]}
