execute at @s run summon marker ~ ~2 ~ {Tags:["random_cavein"]}
execute as @s store result score @e[tag=random_cavein,sort=nearest,limit=1] cave_in.player_y_val run scoreboard players get @s cave_in.player_y_val
execute at @s run spreadplayers ~ ~ 0 5 false @e[tag=random_cavein,limit=1,sort=nearest]
execute as @e[tag=random_cavein] store result entity @e[tag=random_cavein,sort=nearest,limit=1] Pos[1] double 1 run scoreboard players get @s cave_in.player_y_val

# execute as @e[tag=random_cavein] run say summoned!