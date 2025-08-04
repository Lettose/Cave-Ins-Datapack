function cave_in:falling_particles
execute if predicate cave_in:falling_sound_chance run function cave_in:falling_sounds
# summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["smoothing"]}
scoreboard players set @s cave_in.tick 24