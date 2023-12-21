execute if entity @s[type=player,scores={cave_in.place_polished_deepslate=1..}] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray]}

execute if entity @s[tag=highlight] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}

execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:netherite_pickaxe"}}] unless entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:diamond_pickaxe"}}] unless entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:golden_pickaxe"}}] unless entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:iron_pickaxe"}}] unless entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:stone_pickaxe"}}] unless entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:wooden_pickaxe"}}] unless entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,unsupported]}

execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:netherite_pickaxe"}}] if entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,supported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:diamond_pickaxe"}}] if entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,supported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:golden_pickaxe"}}] if entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,supported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:iron_pickaxe"}}] if entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,supported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:stone_pickaxe"}}] if entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,supported]}
execute if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}],SelectedItem:{id:"minecraft:wooden_pickaxe"}}] if entity @s[tag=supported] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,highlight_ray,supported]}

execute if entity @s[type=armor_stand,tag=tnt_explosion] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[ray,tnt_ray]}

execute anchored eyes rotated as @s run tp @e[tag=ray,limit=1,sort=nearest] ^ ^ ^ ~ ~

execute as @e[tag=ray,sort=nearest,limit=1] run function cave_in:ray/process

execute as @s run scoreboard players set @s cave_in.place_polished_deepslate 0