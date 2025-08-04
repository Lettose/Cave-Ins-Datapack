scoreboard players add @s cave_in.tick 1

execute as @s[scores={cave_in.tick=10}] if block ~ ~ ~ #vanilla_falling_blocks run kill @s
execute as @s[scores={cave_in.tick=10}] if block ~ ~ ~ #permeable run kill @s

execute as @s[scores={cave_in.tick=10}] unless block ~ ~-1 ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=10}] positioned ~ ~ ~ run function cave_in:smoothing/replace_block/bottom
execute as @s[scores={cave_in.tick=10}] positioned ~ ~-1 ~ run function cave_in:smoothing/setup_next_check

execute as @s[scores={cave_in.tick=11}] unless block ~1 ~-1 ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=11}] unless block ~1 ~ ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=11}] positioned ~ ~ ~ run function cave_in:smoothing/replace_block/left
execute as @s[scores={cave_in.tick=11}] positioned ~1 ~-1 ~ run function cave_in:smoothing/setup_next_check

execute as @s[scores={cave_in.tick=12}] unless block ~-1 ~-1 ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=12}] unless block ~-1 ~ ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=12}] positioned ~ ~ ~ run function cave_in:smoothing/replace_block/right
execute as @s[scores={cave_in.tick=12}] positioned ~-1 ~-1 ~ run function cave_in:smoothing/setup_next_check

execute as @s[scores={cave_in.tick=13}] unless block ~ ~-1 ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=13}] unless block ~ ~ ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=13}] positioned ~ ~ ~ run function cave_in:smoothing/replace_block/front
execute as @s[scores={cave_in.tick=13}] positioned ~ ~-1 ~1 run function cave_in:smoothing/setup_next_check

execute as @s[scores={cave_in.tick=14}] unless block ~ ~-1 ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=14}] unless block ~ ~ ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=14}] positioned ~ ~ ~ run function cave_in:smoothing/replace_block/back
execute as @s[scores={cave_in.tick=14}] positioned ~ ~-1 ~-1 run function cave_in:smoothing/setup_next_check

execute as @s[scores={cave_in.tick=15}] unless block ~1 ~-1 ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=15}] unless block ~1 ~ ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=15}] positioned ~ ~ ~ run function cave_in:smoothing/replace_block/diagonal_left
execute as @s[scores={cave_in.tick=15}] positioned ~1 ~-1 ~1 run function cave_in:smoothing/setup_next_check

execute as @s[scores={cave_in.tick=16}] unless block ~-1 ~-1 ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=16}] unless block ~-1 ~ ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=16}] positioned ~ ~ ~ run function cave_in:smoothing/replace_block/diagonal_right
execute as @s[scores={cave_in.tick=16}] positioned ~-1 ~-1 ~-1 run function cave_in:smoothing/setup_next_check

execute as @s[scores={cave_in.tick=17}] unless block ~1 ~-1 ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=17}] unless block ~1 ~ ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=17}] positioned ~ ~ ~ run function cave_in:smoothing/replace_block/diagonal_front
execute as @s[scores={cave_in.tick=17}] positioned ~1 ~-1 ~-1 run function cave_in:smoothing/setup_next_check

execute as @s[scores={cave_in.tick=18}] unless block ~-1 ~-1 ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=18}] unless block ~-1 ~ ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=18}] positioned ~ ~ ~ run function cave_in:smoothing/replace_block/diagonal_back
execute as @s[scores={cave_in.tick=18}] positioned ~-1 ~-1 ~1 run function cave_in:smoothing/setup_next_check

execute as @s[scores={cave_in.tick=30..}] run kill @s