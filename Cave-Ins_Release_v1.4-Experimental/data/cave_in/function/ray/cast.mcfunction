execute if entity @s[type=player,scores={cave_in.place_player_head=1..}] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,support_ray]}

execute if entity @s[tag=highlight] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray]}

execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:golden_pickaxe"}}] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:iron_pickaxe"}}] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:stone_pickaxe"}}] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:wooden_pickaxe"}}] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}

execute if entity @s[type=marker,tag=tnt_explosion] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,tnt_ray]}

execute if entity @s[type=marker,tag=random_cavein] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,random_cavein_ray]}

execute anchored eyes rotated as @s run tp @e[tag=ray,limit=1,sort=nearest] ^ ^ ^ ~ ~

execute as @e[tag=ray,sort=nearest,limit=1] run function cave_in:ray/process

execute as @s run scoreboard players set @s cave_in.place_player_head 0