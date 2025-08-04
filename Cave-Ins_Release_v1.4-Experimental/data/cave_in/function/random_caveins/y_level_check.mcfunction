execute as @a store result score @s cave_in.player_y_val run data get entity @s Pos[1]
execute as @a[scores={cave_in.player_y_val=0..30}] as @s if predicate cave_in:random_cavein_chance_1 run function cave_in:random_caveins/init
execute as @a[scores={cave_in.player_y_val=-30..-1}] as @s if predicate cave_in:random_cavein_chance_2 run function cave_in:random_caveins/init
execute as @a[scores={cave_in.player_y_val=-64..-37}] as @s if predicate cave_in:random_cavein_chance_3 run function cave_in:random_caveins/init


scoreboard players add $global cave_in.random_cavein_timer 1