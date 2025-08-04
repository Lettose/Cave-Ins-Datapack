execute if entity @s[type=player] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray]}

execute if entity @s[type=armor_stand,tag=tnt_explosion] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,tnt_ray]}

execute anchored eyes rotated as @s run tp @e[tag=ray,limit=1,sort=nearest] ^ ^ ^ ~ ~

execute as @e[tag=ray,sort=nearest,limit=1] run function cave_in:ray/process

execute as @s run scoreboard players set @s cave_in.place_polished_deepslate 0