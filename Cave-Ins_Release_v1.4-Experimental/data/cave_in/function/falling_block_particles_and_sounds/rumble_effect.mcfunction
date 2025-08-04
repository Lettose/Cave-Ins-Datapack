# execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=1}] run playsound minecraft:entity.minecart.riding ambient @a[distance=0..20] ~ ~ ~ 0.2 0.2 0.1

execute if score $global cave_in.falling_particles_en matches 1 as @s[scores={cave_in.tick=1}] run particle falling_dust{block_state:{Name:deepslate}} ~ ~1 ~ 0.3 0.2 0.3 0 1 force @a[distance=..20]
execute if score $global cave_in.falling_particles_en matches 1 as @s[scores={cave_in.tick=5}] run particle falling_dust{block_state:{Name:deepslate}} ~ ~1 ~ 0.3 0.2 0.3 0 1 force @a[distance=..20]
execute if score $global cave_in.falling_particles_en matches 1 as @s[scores={cave_in.tick=10}] run particle falling_dust{block_state:{Name:deepslate}} ~ ~1 ~ 0.3 0.2 0.3 0 1 force @a[distance=..20]
execute if score $global cave_in.falling_particles_en matches 1 as @s[scores={cave_in.tick=15}] run particle falling_dust{block_state:{Name:deepslate}} ~ ~1 ~ 0.3 0.2 0.3 0 1 force @a[distance=..20]
execute if score $global cave_in.falling_particles_en matches 1 as @s[scores={cave_in.tick=20}] run particle falling_dust{block_state:{Name:deepslate}} ~ ~1 ~ 0.3 0.2 0.3 0 1 force @a[distance=..20]
execute if score $global cave_in.falling_particles_en matches 1 as @s[scores={cave_in.tick=25}] run particle falling_dust{block_state:{Name:deepslate}} ~ ~1 ~ 0.3 0.2 0.3 0 1 force @a[distance=..20]
execute if score $global cave_in.falling_particles_en matches 1 as @s[scores={cave_in.tick=30}] run particle falling_dust{block_state:{Name:deepslate}} ~ ~1 ~ 0.3 0.2 0.3 0 1 force @a[distance=..20]

execute if score $global cave_in.falling_particles_en matches 1 as @s[scores={cave_in.tick=1}] run particle white_smoke ~ ~1 ~ 0.2 0.2 0.2 0 2 force @a[distance=..20]
execute if score $global cave_in.falling_particles_en matches 1 as @s[scores={cave_in.tick=10}] run particle white_smoke ~ ~1 ~ 0.2 0.2 0.2 0 2 force @a[distance=..20]
execute if score $global cave_in.falling_particles_en matches 1 as @s[scores={cave_in.tick=20}] run particle white_smoke ~ ~1 ~ 0.2 0.2 0.2 0 2 force @a[distance=..20]
execute if score $global cave_in.falling_particles_en matches 1 as @s[scores={cave_in.tick=30}] run particle white_smoke ~ ~1 ~ 0.2 0.2 0.2 0 2 force @a[distance=..20]


execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=3}] unless block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.deepslate.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=10}] unless block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.deepslate.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=18}] unless block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.deepslate.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=20}] unless block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.deepslate.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=24}] unless block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.deepslate.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=30}] unless block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.deepslate.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1

execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=15}] unless block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.stone.step ambient @a[distance=0..20] ~ ~ ~ 0.3 0.1 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=22}] unless block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.stone.step ambient @a[distance=0..20] ~ ~ ~ 0.3 0.1 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=26}] unless block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.stone.step ambient @a[distance=0..20] ~ ~ ~ 0.3 0.1 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=30}] unless block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.stone.step ambient @a[distance=0..20] ~ ~ ~ 0.3 0.1 0.1

execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=3}] if block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.gravel.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=10}] if block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.gravel.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=18}] if block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.gravel.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=20}] if block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.gravel.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=24}] if block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.gravel.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=30}] if block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.gravel.break ambient @a[distance=0..20] ~ ~ ~ 0.2 0.6 0.1

execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=15}] if block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.grass.step ambient @a[distance=0..20] ~ ~ ~ 0.3 0.1 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=22}] if block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.grass.step ambient @a[distance=0..20] ~ ~ ~ 0.3 0.1 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=26}] if block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.grass.step ambient @a[distance=0..20] ~ ~ ~ 0.3 0.1 0.1
execute if score $global cave_in.falling_sounds_en matches 1 as @s[scores={cave_in.tick=30}] if block ~ ~1.5 ~ #soil_blocks run playsound minecraft:block.grass.step ambient @a[distance=0..20] ~ ~ ~ 0.3 0.1 0.1
