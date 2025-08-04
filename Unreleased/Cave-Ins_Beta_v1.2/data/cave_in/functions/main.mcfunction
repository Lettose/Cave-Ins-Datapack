scoreboard players add $global cave_in.tick 1

###### Detect Cave In ######
execute as @a at @s positioned ~ ~252 ~ unless entity @e[tag=valid_support, distance=0..10,sort=nearest] unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] at @s run function cave_in:cavein_trigger


###### Cave In Mechanic ######
execute as @e[type=armor_stand,tag=cave_in] at @s positioned ~ ~-250 ~ run function cave_in:cavein
execute as @e[type=armor_stand,tag=additional_cave_in] at @s positioned ~ ~-250 ~ run function cave_in:cavein

execute as @e[type=armor_stand,tag=massive_cave_in] at @s positioned ~ ~-250 ~ run function cave_in:massive_cavein
execute as @e[type=armor_stand,tag=massive_additional_cave_in] at @s positioned ~ ~-250 ~ run function cave_in:massive_cavein



###### Supports ######
# Check Player Placed Polished Deepslate
execute if score $global cave_in.supports_en matches 1 as @a[scores={cave_in.place_polished_deepslate=1..}] at @s run function cave_in:ray/cast
# Build
execute if score $global cave_in.supports_en matches 1 as @e[type=armor_stand,tag=build_support] at @s positioned ~ ~-251 ~ run function cave_in:supports/build_support
# Check Support
execute if score $global cave_in.supports_en matches 1 if score $global cave_in.tick = $global cave_in.sample_rate as @e[tag=valid_support] at @s positioned ~ ~-251 ~ run function cave_in:supports/check_valid_support
# Display Supported to Players
execute if score $global cave_in.supports_display_en matches 1 if score $global cave_in.tick = $global cave_in.sample_rate as @a at @s positioned ~ ~250 ~ run function cave_in:supports/player_check



###### TNT Cave-ins ######
execute if score $global cave_in.tnt_cavein_en matches 1 as @e[type=tnt,nbt={Fuse:1s}] at @s unless block ~ ~1.05 ~ minecraft:spruce_trapdoor unless block ~ ~1.05 ~ minecraft:oak_trapdoor unless block ~ ~1.05 ~ minecraft:dark_oak_trapdoor unless block ~ ~1.05 ~ minecraft:jungle_trapdoor unless block ~ ~1.05 ~ minecraft:mangrove_trapdoor unless block ~ ~1.05 ~ minecraft:birch_trapdoor unless block ~ ~1.05 ~ minecraft:acacia_trapdoor unless block ~ ~1.05 ~ minecraft:cherry_trapdoor unless block ~ ~1.05 ~ minecraft:bamboo_trapdoor unless block ~ ~1.05 ~ minecraft:warped_trapdoor unless block ~ ~1.05 ~ minecraft:crimson_trapdoor unless block ~ ~1.05 ~ minecraft:iron_trapdoor align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~10 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["tnt_explosion"]}
execute if score $global cave_in.tnt_cavein_en matches 1 as @e[type=armor_stand,tag=tnt_explosion] at @s positioned ~ ~-10 ~ run function cave_in:tnt_cavein



###### Falling Blocks Particles ######
execute if score $global cave_in.falling_sounds_en matches 1 as @e[type=falling_block] unless entity @s[nbt={BlockState:{Name:"minecraft:sand"}}] unless entity @s[nbt={BlockState:{Name:"minecraft:red_sand"}}] unless entity @s[nbt={BlockState:{Name:"minecraft:gravel"}}] if predicate cave_in:falling_particle_chance run function cave_in:falling_particles
execute if score $global cave_in.falling_sounds_en matches 1 as @e[type=falling_block] unless entity @s[nbt={BlockState:{Name:"minecraft:sand"}}] unless entity @s[nbt={BlockState:{Name:"minecraft:red_sand"}}] unless entity @s[nbt={BlockState:{Name:"minecraft:gravel"}}] if predicate cave_in:falling_sound_chance run function cave_in:falling_sounds



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

###### Sample Rate Reset ######
execute if score $global cave_in.tick >= $global cave_in.sample_rate run scoreboard players set $global cave_in.tick 0
