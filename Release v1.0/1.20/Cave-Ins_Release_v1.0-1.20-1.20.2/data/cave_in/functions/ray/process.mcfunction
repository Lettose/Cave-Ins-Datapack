scoreboard players set @s[tag=!tnt_ray] cave_in.steps 50
scoreboard players set @s[tag=tnt_ray] cave_in.steps 12

execute at @s run function cave_in:ray/move

execute at @s[tag=hitblock] run function cave_in:ray/hit

kill @s
