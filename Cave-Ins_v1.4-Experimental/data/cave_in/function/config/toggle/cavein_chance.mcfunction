execute store result score $global cave_in.tmp_store run scoreboard players get $global cave_in.cavein_chance

execute if score $global cave_in.tmp_store matches 0 run scoreboard players set $global cave_in.cavein_chance 1
execute if score $global cave_in.tmp_store matches 1 run scoreboard players set $global cave_in.cavein_chance 2
execute if score $global cave_in.tmp_store matches 2 run scoreboard players set $global cave_in.cavein_chance 3
execute if score $global cave_in.tmp_store matches 3 run scoreboard players set $global cave_in.cavein_chance 4
execute if score $global cave_in.tmp_store matches 4 run scoreboard players set $global cave_in.cavein_chance 0

function cave_in:config/main_config