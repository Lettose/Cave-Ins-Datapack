execute store result score $global cave_in.tmp_store run scoreboard players get $global cave_in.massive_cavein_en

execute if score $global cave_in.tmp_store matches 0 run scoreboard players set $global cave_in.massive_cavein_en 1
execute if score $global cave_in.tmp_store matches 1 run scoreboard players set $global cave_in.massive_cavein_en 0

function cave_in:config/main_config