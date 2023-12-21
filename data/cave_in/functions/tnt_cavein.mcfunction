scoreboard players add @s cave_in.tick 1

execute as @s[scores={cave_in.tick=5}] run function cave_in:ray/cast

execute as @s[scores={cave_in.tick=5..}] run kill @s