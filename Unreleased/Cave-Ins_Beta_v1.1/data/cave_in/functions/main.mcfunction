###### Detect Cave In ######
execute as @a at @s positioned ~ ~252 ~ unless entity @e[tag=valid_support, distance=0..10,sort=nearest] unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] at @s run function cave_in:cavein_trigger


###### Cave In Mechanic ######
execute as @e[tag=cave_in] at @s positioned ~ ~-250 ~ run function cave_in:cavein
execute as @e[tag=additional_cave_in] at @s positioned ~ ~-250 ~ run function cave_in:cavein

execute as @e[tag=massive_cave_in] at @s positioned ~ ~-250 ~ run function cave_in:massive_cavein
execute as @e[tag=massive_additional_cave_in] at @s positioned ~ ~-250 ~ run function cave_in:massive_cavein

###### Supports ######
execute as @a[scores={cave_in.place_polished_deepslate=1..}] at @s run function cave_in:ray/cast
# Build Support
execute as @e[tag=build_support] at @s positioned ~ ~-251 ~ run function cave_in:supports/build_support
# Check Support
execute as @e[tag=valid_support] at @s positioned ~ ~-251 ~ run function cave_in:supports/check_valid_support
execute as @a at @s positioned ~ ~250 ~ if entity @e[tag=valid_support,distance=0..10,sort=nearest] at @s run title @s actionbar {"text":"Supported","color":"dark_green"}



###### TNT Cave-ins ######
execute as @e[type=tnt,nbt={Fuse:1s}] at @s align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~10 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["tnt_explosion"]}
execute as @e[tag=tnt_explosion] at @s positioned ~ ~-10 ~ run function cave_in:tnt_cavein

#execute as @e[tag=tnt_explosion] at @s positioned ~ ~-10 ~ at @e[type=item,nbt={Age:0s},distance=0..10] run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cave_in"]}



###### Falling Blocks Particles ######
execute as @e[type=falling_block] as @s if predicate cave_in:falling_sound_chance run function cave_in:falling_particles
execute as @e[type=falling_block] as @s if predicate cave_in:falling_sound_chance run function cave_in:falling_sounds
#execute as @e[type=falling_block] unless block ~ ~-0.1 ~ air at @s run playsound minecraft:block.deepslate.break ambient @a[distance=0..20] ~ ~ ~ 1 0.1 0.5



###### Ray Cast ######
#execute as @a at @s run function cave_in:ray/cast



###### Reset Scores For Mined Blocks ######
execute as @a[scores={cave_in.mine_stone=1..}] run scoreboard players set @s cave_in.mine_stone 0
execute as @a[scores={cave_in.mine_cobblestone=1..}] run scoreboard players set @s cave_in.mine_cobblestone 0
execute as @a[scores={cave_in.mine_deepslate=1..}] run scoreboard players set @s cave_in.mine_deepslate 0
execute as @a[scores={cave_in.mine_cobbled_deepslate=1..}] run scoreboard players set @s cave_in.mine_cobbled_deepslate 0
execute as @a[scores={cave_in.mine_andesite=1..}] run scoreboard players set @s cave_in.mine_andesite 0
execute as @a[scores={cave_in.mine_granite=1..}] run scoreboard players set @s cave_in.mine_granite 0
execute as @a[scores={cave_in.mine_diorite=1..}] run scoreboard players set @s cave_in.mine_diorite 0
execute as @a[scores={cave_in.mine_tuff=1..}] run scoreboard players set @s cave_in.mine_tuff 0
execute as @a[scores={cave_in.mine_coal_ore=1..}] run scoreboard players set @s cave_in.mine_coal_ore 0
execute as @a[scores={cave_in.mine_iron_ore=1..}] run scoreboard players set @s cave_in.mine_iron_ore 0
execute as @a[scores={cave_in.mine_gold_ore=1..}] run scoreboard players set @s cave_in.mine_gold_ore 0
execute as @a[scores={cave_in.mine_copper_ore=1..}] run scoreboard players set @s cave_in.mine_copper_ore 0
execute as @a[scores={cave_in.mine_lapis_ore=1..}] run scoreboard players set @s cave_in.mine_lapis_ore 0
execute as @a[scores={cave_in.mine_redstone_ore=1..}] run scoreboard players set @s cave_in.mine_redstone_ore 0
execute as @a[scores={cave_in.mine_emerald_ore=1..}] run scoreboard players set @s cave_in.mine_emerald_ore 0
execute as @a[scores={cave_in.mine_diamond_ore=1..}] run scoreboard players set @s cave_in.mine_diamond_ore 0
execute as @a[scores={cave_in.mine_deepslate_coal_ore=1..}] run scoreboard players set @s cave_in.mine_deepslate_coal_ore 0
execute as @a[scores={cave_in.mine_deepslate_iron_ore=1..}] run scoreboard players set @s cave_in.mine_deepslate_iron_ore 0
execute as @a[scores={cave_in.mine_deepslate_gold_ore=1..}] run scoreboard players set @s cave_in.mine_deepslate_gold_ore 0
execute as @a[scores={cave_in.mine_deepslate_copper_ore=1..}] run scoreboard players set @s cave_in.mine_deepslate_copper_ore 0
execute as @a[scores={cave_in.mine_deepslate_emerald_ore=1..}] run scoreboard players set @s cave_in.mine_deepslate_emerald_ore 0
execute as @a[scores={cave_in.mine_deepslate_lapis_ore=1..}] run scoreboard players set @s cave_in.mine_deepslate_lapis_ore 0
execute as @a[scores={cave_in.mine_deepslate_redstone_ore=1..}] run scoreboard players set @s cave_in.mine_deepslate_redstone_ore 0
execute as @a[scores={cave_in.mine_deepslate_diamond_ore=1..}] run scoreboard players set @s cave_in.mine_deepslate_diamond_ore 0
execute as @a[scores={cave_in.mine_dirt=1..}] run scoreboard players set @s cave_in.mine_dirt 0
execute as @a[scores={cave_in.mine_coarse_dirt=1..}] run scoreboard players set @s cave_in.mine_coarse_dirt 0
execute as @a[scores={cave_in.mine_dirt_path=1..}] run scoreboard players set @s cave_in.mine_dirt_path 0
execute as @a[scores={cave_in.mine_podzol=1..}] run scoreboard players set @s cave_in.mine_podzol 0
execute as @a[scores={cave_in.mine_grass=1..}] run scoreboard players set @s cave_in.mine_grass 0
execute as @a[scores={cave_in.mine_clay=1..}] run scoreboard players set @s cave_in.mine_clay 0
execute as @a[scores={cave_in.mine_farmland=1..}] run scoreboard players set @s cave_in.mine_farmland 0
execute as @a[scores={cave_in.mine_moss_block=1..}] run scoreboard players set @s cave_in.mine_moss_block 0
