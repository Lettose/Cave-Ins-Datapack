scoreboard players add $global cave_in.tick 1

###### Detect Cave In ######
#execute as @e[type=item,nbt={Age:0s}] at @s positioned ~ ~252 ~ unless entity @e[tag=valid_support, distance=0..10,sort=nearest] unless entity @a[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}},distance=..5] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ air if block ~ ~-2 ~ air if predicate cave_in:mine_cavein_chance run function cave_in:cavein_trigger
execute as @e[type=item,nbt={Age:0s}] at @s unless entity @a[tag=supported,sort=nearest,limit=1] align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ air if block ~ ~-2 ~ air if predicate cave_in:mine_cavein_chance run function cave_in:cavein_trigger



###### Cave In Mechanic ######
execute as @e[type=armor_stand,tag=cave_in] at @s positioned ~ ~-250 ~ run function cave_in:cavein
execute as @e[type=armor_stand,tag=additional_cave_in] at @s positioned ~ ~-250 ~ run function cave_in:cavein

execute as @e[type=armor_stand,tag=massive_cave_in] at @s positioned ~ ~-250 ~ run function cave_in:massive_cavein
execute as @e[type=armor_stand,tag=massive_additional_cave_in] at @s positioned ~ ~-250 ~ run function cave_in:massive_cavein



###### Supports ######
# Check Player Placed Polished Deepslate
execute as @a[scores={cave_in.place_polished_deepslate=1..}] at @s run function cave_in:ray/cast
# Build
execute as @e[type=armor_stand,tag=build_support] at @s positioned ~ ~-251 ~ run function cave_in:supports/build_support
# Check Support
execute if score $global cave_in.tick = $global cave_in.sample_rate as @e[tag=valid_support] at @s positioned ~ ~-251 ~ run function cave_in:supports/check_valid_support
# Display Supported to Players
execute if score $global cave_in.tick = $global cave_in.sample_rate as @a at @s positioned ~ ~250 ~ if entity @e[tag=valid_support,distance=0..15] run function cave_in:supports/player_check



###### TNT Cave-ins ######
execute as @e[type=tnt,nbt={Fuse:1s}] at @s align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~10 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["tnt_explosion"]}
execute as @e[type=armor_stand,tag=tnt_explosion] at @s positioned ~ ~-10 ~ run function cave_in:tnt_cavein



###### Falling Blocks Particles ######
execute as @e[type=falling_block] as @s unless entity @s[nbt={Time:0}] if predicate cave_in:falling_sound_chance run function cave_in:falling_particles
execute as @e[type=falling_block] as @s unless entity @s[nbt={Time:0}] if predicate cave_in:falling_sound_chance run function cave_in:falling_sounds



###### tick reset ######
execute if score $global cave_in.tick >= $global cave_in.sample_rate run scoreboard players set $global cave_in.tick 0
