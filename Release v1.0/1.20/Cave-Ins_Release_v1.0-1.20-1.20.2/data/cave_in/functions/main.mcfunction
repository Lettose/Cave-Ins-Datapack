scoreboard players add $global cave_in.tick 1

###### Detect Cave In ######
execute as @a at @s if score $global cave_in.cavein_chance matches 4 unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] at @s run function cave_in:cavein_trigger
execute as @a at @s if score $global cave_in.cavein_chance matches 3 unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] at @s if predicate cave_in:mine_cavein_chance_high run function cave_in:cavein_trigger
execute as @a at @s if score $global cave_in.cavein_chance matches 2 unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] at @s if predicate cave_in:mine_cavein_chance_med run function cave_in:cavein_trigger
execute as @a at @s if score $global cave_in.cavein_chance matches 1 unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] at @s if predicate cave_in:mine_cavein_chance_low run function cave_in:cavein_trigger
execute as @a at @s if score $global cave_in.cavein_chance matches 0 unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] at @s if predicate cave_in:mine_cavein_chance_verylow run function cave_in:cavein_trigger


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
execute if score $global cave_in.supports_en matches 1 if score $global cave_in.tick = $global cave_in.sample_rate as @e[tag=valid_support] at @s positioned ~ ~-251 ~ if entity @e[type=player,distance=..20] run function cave_in:supports/check_valid_support


###### TNT Cave-ins ######
execute if score $global cave_in.tnt_cavein_en matches 1 as @e[type=tnt,nbt={Fuse:1s}] at @s unless block ~ ~1.05 ~ minecraft:spruce_trapdoor unless block ~ ~1.05 ~ minecraft:oak_trapdoor unless block ~ ~1.05 ~ minecraft:dark_oak_trapdoor unless block ~ ~1.05 ~ minecraft:jungle_trapdoor unless block ~ ~1.05 ~ minecraft:mangrove_trapdoor unless block ~ ~1.05 ~ minecraft:birch_trapdoor unless block ~ ~1.05 ~ minecraft:acacia_trapdoor unless block ~ ~1.05 ~ minecraft:cherry_trapdoor unless block ~ ~1.05 ~ minecraft:bamboo_trapdoor unless block ~ ~1.05 ~ minecraft:warped_trapdoor unless block ~ ~1.05 ~ minecraft:crimson_trapdoor unless block ~ ~1.05 ~ minecraft:iron_trapdoor align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~10 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["tnt_explosion"]}
execute if score $global cave_in.tnt_cavein_en matches 1 as @e[type=armor_stand,tag=tnt_explosion] at @s positioned ~ ~-10 ~ run function cave_in:tnt_cavein



###### Falling Blocks Particles and Physics ######
execute as @e[type=falling_block,tag=stone] as @s if predicate cave_in:falling_particle_chance run function cave_in:falling_block_particles_and_sounds/stone
execute as @e[type=falling_block,tag=deepslate] as @s if predicate cave_in:falling_particle_chance run function cave_in:falling_block_particles_and_sounds/deepslate
execute as @e[type=falling_block,tag=soil] as @s if predicate cave_in:falling_particle_chance run function cave_in:falling_block_particles_and_sounds/soil

execute as @e[type=falling_block,tag=stone,nbt={Time:1}] as @s run function cave_in:falling_block_particles_and_sounds/stone
execute as @e[type=falling_block,tag=deepslate,nbt={Time:1}] as @s run function cave_in:falling_block_particles_and_sounds/deepslate
execute as @e[type=falling_block,tag=soil,nbt={Time:1}] as @s run function cave_in:falling_block_particles_and_sounds/soil




####################################### Experimental CHANGES
#### Fix Torches and entity blocks that break falling blocks from placing

# execute as @e[tag=set_pos] run tag @s remove falling_block
# execute as @e[tag=set_pos] run tag @s add fallen_block
# execute as @e[tag=set_pos] at @s positioned ~ ~-0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
# execute as @e[tag=set_pos] run tag @s remove set_pos
# execute as @e[tag=fallen_block] at @s positioned ~ ~-0.5 ~ run function cave_in:smoothing/check_smooth

# execute as @e[tag=falling_block] at @s unless block ~ ~-0.5 ~ #permeable run tag @s add set_pos

# execute as @e[tag=fallen_block] at @s run particle block stone ~ ~0.6 ~ 0.2 0.1 0.2 0 1



# execute as @e[tag=falling_block] at @s run particle dragon_breath ~ ~ ~ 0 0 0 0 1

# execute as @e[tag=spot_taken] at @s run particle scrape ~ ~-249.5 ~ 0 0 0 0 1 force @a



###### Highlight Block Ray Cast

# execute as @a[tag=holding_pick] at @s run function cave_in:ray/cast
execute if score $global cave_in.supports_display_en matches 1 as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] at @s run function cave_in:ray/cast
execute if score $global cave_in.supports_display_en matches 1 as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] at @s run function cave_in:ray/cast
execute if score $global cave_in.supports_display_en matches 1 as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] at @s run function cave_in:ray/cast
execute if score $global cave_in.supports_display_en matches 1 as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] at @s run function cave_in:ray/cast
execute if score $global cave_in.supports_display_en matches 1 as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] at @s run function cave_in:ray/cast
execute if score $global cave_in.supports_display_en matches 1 as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] at @s run function cave_in:ray/cast

execute if score $global cave_in.supports_display_en matches 1 as @e[tag=highlight] at @s run function cave_in:ray/cast

execute as @e[tag=supported_particle] at @s run function cave_in:supported_block_highlight
execute as @e[tag=unsupported_particle] at @s run function cave_in:unsupported_block_highlight



###############################################################



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
