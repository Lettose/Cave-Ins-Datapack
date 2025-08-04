execute at @s unless block ~ ~-1 ~ #permeable positioned ~ ~250 ~ unless entity @e[type=armor_stand,tag=smoothing,distance=0..1] at @s align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["smoothing"]}

execute if score $global cave_in.falling_sounds_en matches 1 as @s if predicate cave_in:falling_particle_chance at @s run function cave_in:falling_particles
execute if score $global cave_in.falling_sounds_en matches 1 as @s if predicate cave_in:falling_sound_chance at @s run function cave_in:falling_sounds