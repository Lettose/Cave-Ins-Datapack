scoreboard players add @s cave_in.tick 1

# execute as @s[scores={cave_in.tick=1..}] at @s run particle minecraft:crit ~ ~1.5 ~

execute as @s[scores={cave_in.tick=5..}] run kill @s
