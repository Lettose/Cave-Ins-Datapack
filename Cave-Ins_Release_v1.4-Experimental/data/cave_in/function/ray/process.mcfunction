scoreboard players set @s[tag=highlight_ray] cave_in.steps 50
scoreboard players set @s[tag=support_ray] cave_in.steps 50
scoreboard players set @s[tag=random_cavein_ray] cave_in.steps 40
scoreboard players set @s[tag=tnt_ray] cave_in.steps 12

execute at @s run function cave_in:ray/move

execute at @s[tag=hitblock] run function cave_in:ray/hit

kill @s
