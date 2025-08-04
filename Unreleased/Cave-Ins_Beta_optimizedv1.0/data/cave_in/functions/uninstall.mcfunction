scoreboard objectives remove cave_in.tick
scoreboard objectives remove cave_in.sample_rate
scoreboard objectives remove cave_in.steps
scoreboard objectives remove cave_in.place_polished_deepslate

scoreboard objectives remove cave_in.massive_cavein_en
scoreboard objectives remove cave_in.supports_en
scoreboard objectives remove cave_in.tnt_cavein_en
scoreboard objectives remove cave_in.tmp_store

execute as @e[tag=valid_support] at @s positioned ~ ~-251 ~ run function cave_in:supports/destroy_support

kill @e[tag=cave_in]
kill @e[tag=additional_cave_in]
kill @e[tag=massive_cave_in]
kill @e[tag=massive_additional_cave_in]
kill @e[tag=tnt_explosion]
kill @e[tag=valid_support]
kill @e[tag=build_support]
kill @e[tag=new_support]
