scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=1}] run scoreboard players add @s cave_in.check_smoothing_count 1

execute as @s[scores={cave_in.tick=1}] if block ~ ~ ~ #vanilla_falling_blocks run kill @s
execute as @s[scores={cave_in.tick=1}] if block ~ ~ ~ #permeable run kill @s

execute as @s[scores={cave_in.tick=2}] unless block ~ ~-0.5 ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=2}] positioned ~ ~ ~ run function cave_in:smoothing/replace_block/bottom

execute as @s[scores={cave_in.tick=4,cave_in.check_smoothing_count=..1}] unless block ~1 ~-1 ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=4,cave_in.check_smoothing_count=..1}] unless block ~1 ~ ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=4,cave_in.check_smoothing_count=..1}] positioned ~1 ~-1 ~ if entity @e[type=marker,tag=smoothing_target,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=4,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/summon_block_display/left

execute as @s[scores={cave_in.tick=6,cave_in.check_smoothing_count=..1}] unless block ~-1 ~-1 ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=6,cave_in.check_smoothing_count=..1}] unless block ~-1 ~ ~ #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=6,cave_in.check_smoothing_count=..1}] positioned ~-1 ~-1 ~ if entity @e[type=marker,tag=smoothing_target,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=6,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/summon_block_display/right

execute as @s[scores={cave_in.tick=8,cave_in.check_smoothing_count=..1}] unless block ~ ~-1 ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=8,cave_in.check_smoothing_count=..1}] unless block ~ ~ ~1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=8,cave_in.check_smoothing_count=..1}] positioned ~ ~-1 ~1 if entity @e[type=marker,tag=smoothing_target,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=8,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/summon_block_display/front

execute as @s[scores={cave_in.tick=10,cave_in.check_smoothing_count=..1}] unless block ~ ~-1 ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=10,cave_in.check_smoothing_count=..1}] unless block ~ ~ ~-1 #permeable run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=10,cave_in.check_smoothing_count=..1}] positioned ~ ~-1 ~-1 if entity @e[type=marker,tag=smoothing_target,distance=..1] run scoreboard players add @s cave_in.tick 1
execute as @s[scores={cave_in.tick=10,cave_in.check_smoothing_count=..1}] positioned ~ ~ ~ if predicate cave_in:block_smoothing_chance run function cave_in:smoothing/summon_block_display/back

execute as @s[scores={cave_in.tick=11,cave_in.check_smoothing_count=..120}] run scoreboard players set @s cave_in.tick 0

execute as @s[scores={cave_in.tick=12..}] run kill @s