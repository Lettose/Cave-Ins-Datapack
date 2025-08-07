scoreboard players add @s cave_in.tick 1

execute as @s[scores={cave_in.tick=2},tag=left] run setblock ~ ~ ~ air replace
execute as @s[scores={cave_in.tick=2},tag=left] run data modify entity @s transformation.translation set value [1f, 0f, 0f]
execute as @s[scores={cave_in.tick=7},tag=left] align xyz positioned ~1.5 ~ ~0.5 run function cave_in:smoothing/summon_block

execute as @s[scores={cave_in.tick=2},tag=right] run setblock ~ ~ ~ air replace
execute as @s[scores={cave_in.tick=2},tag=right] run data modify entity @s transformation.translation set value [-1f, 0f, 0f]
execute as @s[scores={cave_in.tick=7},tag=right] align xyz positioned ~-0.5 ~ ~0.5 run function cave_in:smoothing/summon_block

execute as @s[scores={cave_in.tick=2},tag=front] run setblock ~ ~ ~ air replace
execute as @s[scores={cave_in.tick=2},tag=front] run data modify entity @s transformation.translation set value [0f, 0f, 1f]
execute as @s[scores={cave_in.tick=7},tag=front] align xyz positioned ~0.5 ~ ~1.5 run function cave_in:smoothing/summon_block

execute as @s[scores={cave_in.tick=2},tag=back] run setblock ~ ~ ~ air replace
execute as @s[scores={cave_in.tick=2},tag=back] run data modify entity @s transformation.translation set value [0f, 0f, -1f]
execute as @s[scores={cave_in.tick=7},tag=back] align xyz positioned ~0.5 ~ ~-0.5 run function cave_in:smoothing/summon_block

execute as @s[scores={cave_in.tick=8..}] run kill @s