execute if score $global cave_in.falling_particles_en matches 1 as @s at @s run particle campfire_cosy_smoke ~ ~1 ~ 0.3 0.2 0.3 0 2 force @a[distance=..20]
execute if score $global cave_in.falling_sounds_en matches 1 as @s at @s run playsound minecraft:block.deepslate.fall ambient @a[distance=0..20] ~ ~ ~ 0.4 0.1 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s at @s run playsound minecraft:block.deepslate.fall ambient @a[distance=0..20] ~ ~ ~ 0.4 0.3 0.1

execute if entity @e[nbt={Time:1}] if score $global cave_in.falling_particles_en matches 1 as @s at @s run particle campfire_cosy_smoke ~ ~1 ~ 0.3 0.2 0.3 0 2 force @a[distance=..20]
execute if entity @e[nbt={Time:1}] if score $global cave_in.falling_sounds_en matches 1 as @s at @s run playsound minecraft:block.deepslate.fall ambient @a[distance=0..20] ~ ~ ~ 0.4 0.1 0.1
