scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=1}] run scoreboard players add @s cave_in.check_smoothing_count 1

execute as @s[scores={cave_in.tick=5}] if block ~ ~ ~ #vanilla_falling_blocks run kill @s
execute as @s[scores={cave_in.tick=5}] if block ~ ~ ~ #permeable run kill @s

execute as @s[scores={cave_in.tick=6}] unless block ~ ~-1 ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=6}] positioned ~ ~ ~ run function cave_in:smoothing/replace_block/bottom

execute as @s[scores={cave_in.tick=8,cave_in.check_smoothing_count=..1}] unless block ~1 ~-1 ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=8,cave_in.check_smoothing_count=..1}] unless block ~1 ~ ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=8,cave_in.check_smoothing_count=..1}] positioned ~1 ~-1 ~ if entity @e[type=falling_block,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=8,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/replace_block/left

execute as @s[scores={cave_in.tick=10,cave_in.check_smoothing_count=..1}] unless block ~-1 ~-1 ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=10,cave_in.check_smoothing_count=..1}] unless block ~-1 ~ ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=10,cave_in.check_smoothing_count=..1}] positioned ~-1 ~-1 ~ if entity @e[type=falling_block,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=10,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/replace_block/right

execute as @s[scores={cave_in.tick=12,cave_in.check_smoothing_count=..1}] unless block ~ ~-1 ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=12,cave_in.check_smoothing_count=..1}] unless block ~ ~ ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=12,cave_in.check_smoothing_count=..1}] positioned ~ ~-1 ~1 if entity @e[type=falling_block,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=12,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/replace_block/front

execute as @s[scores={cave_in.tick=14,cave_in.check_smoothing_count=..1}] unless block ~ ~-1 ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=14,cave_in.check_smoothing_count=..1}] unless block ~ ~ ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=14,cave_in.check_smoothing_count=..1}] positioned ~ ~-1 ~-1 if entity @e[type=falling_block,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=14,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/replace_block/back

execute as @s[scores={cave_in.tick=16,cave_in.check_smoothing_count=..1}] unless block ~1 ~-1 ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=16,cave_in.check_smoothing_count=..1}] unless block ~1 ~ ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=16,cave_in.check_smoothing_count=..1}] positioned ~1 ~-1 ~1 if entity @e[type=falling_block,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=16,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/replace_block/diagonal_left

execute as @s[scores={cave_in.tick=18,cave_in.check_smoothing_count=..1}] unless block ~-1 ~-1 ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=18,cave_in.check_smoothing_count=..1}] unless block ~-1 ~ ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=18,cave_in.check_smoothing_count=..1}] positioned ~-1 ~-1 ~-1 if entity @e[type=falling_block,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=18,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/replace_block/diagonal_right

execute as @s[scores={cave_in.tick=20,cave_in.check_smoothing_count=..1}] unless block ~1 ~-1 ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=20,cave_in.check_smoothing_count=..1}] unless block ~1 ~ ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=20,cave_in.check_smoothing_count=..1}] positioned ~1 ~-1 ~-1 if entity @e[type=falling_block,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=20,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/replace_block/diagonal_front

execute as @s[scores={cave_in.tick=22,cave_in.check_smoothing_count=..1}] unless block ~-1 ~-1 ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=22,cave_in.check_smoothing_count=..1}] unless block ~-1 ~ ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=22,cave_in.check_smoothing_count=..1}] positioned ~-1 ~-1 ~1 if entity @e[type=falling_block,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=22,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/replace_block/diagonal_back

execute as @s[scores={cave_in.tick=23,cave_in.check_smoothing_count=..20}] run scoreboard players set @s cave_in.tick 0

execute as @s[scores={cave_in.tick=24..}] run kill @s