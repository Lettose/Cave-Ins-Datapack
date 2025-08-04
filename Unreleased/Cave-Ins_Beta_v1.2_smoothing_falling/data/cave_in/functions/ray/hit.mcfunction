#particle dust 1 0 0 0.5 ^ ^ ^ 0.2 0.2 0.2 0 20 force
#execute as @s run say found it!

tp @s[tag=!tnt_ray] ^ ^ ^
tp @s[tag=tnt_ray] ^ ^ ^

execute as @s[tag=!tnt_ray] run function cave_in:supports/create_new_support
execute as @s[tag=tnt_ray] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["massive_cave_in"]}
