tp @s[tag=!tnt_ray] ^ ^ ^0.1
tp @s[tag=tnt_ray] ^ ^0.5 ^

#particle dust 1 0 0 0.5 ^ ^-0.5 ^ 0 0 0 0 1 force

execute at @s[tag=!tnt_ray] if block ~ ~ ~ polished_deepslate run tag @s add hitblock
execute at @s[tag=tnt_ray] unless block ~ ~ ~ #permeable run tag @s add hitblock


scoreboard players remove @s cave_in.steps 1

execute as @s[tag=!hitblock,scores={cave_in.steps=1..}] at @s run function cave_in:ray/move
