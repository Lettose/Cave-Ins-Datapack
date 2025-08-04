#execute anchored eyes rotated as @s positioned ^ ^ ^1 if block ^ ^ ^ polished_deepslate run function cave_in:supports/check
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["new_support"]}

execute as @e[tag=new_support] at @s positioned ~ ~-251 ~ unless block ~ ~ ~ #stripped_wood_blocks run kill @e[tag=new_support]


execute as @e[tag=new_support] at @s positioned ~ ~-251 ~ if block ~ ~ ~ stripped_spruce_wood run tag @e[tag=new_support] add spruce
execute as @e[tag=new_support] at @s positioned ~ ~-251 ~ if block ~ ~ ~ stripped_acacia_wood run tag @e[tag=new_support] add acacia
execute as @e[tag=new_support] at @s positioned ~ ~-251 ~ if block ~ ~ ~ stripped_oak_wood run tag @e[tag=new_support] add oak
execute as @e[tag=new_support] at @s positioned ~ ~-251 ~ if block ~ ~ ~ stripped_dark_oak_wood run tag @e[tag=new_support] add dark_oak
execute as @e[tag=new_support] at @s positioned ~ ~-251 ~ if block ~ ~ ~ stripped_cherry_wood run tag @e[tag=new_support] add cherry
execute as @e[tag=new_support] at @s positioned ~ ~-251 ~ if block ~ ~ ~ stripped_jungle_wood run tag @e[tag=new_support] add jungle
execute as @e[tag=new_support] at @s positioned ~ ~-251 ~ if block ~ ~ ~ stripped_birch_wood run tag @e[tag=new_support] add birch
execute as @e[tag=new_support] at @s positioned ~ ~-251 ~ if block ~ ~ ~ stripped_mangrove_wood run tag @e[tag=new_support] add mangrove
execute as @e[tag=new_support] at @s positioned ~ ~-251 ~ if block ~ ~ ~ stripped_warped_hyphae run tag @e[tag=new_support] add warped
execute as @e[tag=new_support] at @s positioned ~ ~-251 ~ if block ~ ~ ~ stripped_crimson_hyphae run tag @e[tag=new_support] add crimson

tag @e[tag=new_support] add build_support
tag @e[tag=new_support] remove new_support

scoreboard players set @s cave_in.place_polished_deepslate 0