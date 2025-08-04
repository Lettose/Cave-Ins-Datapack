scoreboard players add @s cave_in.tick 1

#execute as @s[tag=cave_in,scores={cave_in.tick=1}] run say working..
#execute as @s[tag=additional_cave_in,scores={cave_in.tick=1}] run say addition

execute as @s[tag=cave_in,scores={cave_in.tick=1}] if score $global cave_in.massive_cavein_en matches 1 if predicate cave_in:massive_cavein_chance run tag @s add massive_cave_in

execute as @s[tag=massive_cave_in,scores={cave_in.tick=1}] run tag @s remove cave_in
execute as @s[tag=massive_cave_in,scores={cave_in.tick=1}] run scoreboard players set @s cave_in.tick 0


execute as @s[tag=cave_in,scores={cave_in.tick=1}] positioned ~1 ~-1 ~ if predicate cave_in:severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[tag=additional_cave_in,scores={cave_in.tick=1}] positioned ~1 ~-1 ~ if predicate cave_in:additional_severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
#execute as @s[scores={cave_in.tick=1}] if block ~1 ~-2 ~ #permeable run function cave_in:replace_block/bottom_left

execute as @s[tag=cave_in,scores={cave_in.tick=2}] positioned ~ ~-1 ~1 if predicate cave_in:severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[tag=additional_cave_in,scores={cave_in.tick=2}] positioned ~ ~-1 ~1 if predicate cave_in:additional_severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
#execute as @s[scores={cave_in.tick=2}] if block ~ ~-2 ~1 #permeable run function cave_in:replace_block/bottom_right

execute as @s[tag=cave_in,scores={cave_in.tick=3}] positioned ~-1 ~-1 ~ if predicate cave_in:severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[tag=additional_cave_in,scores={cave_in.tick=3}] positioned ~-1 ~-1 ~ if predicate cave_in:additional_severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
#execute as @s[scores={cave_in.tick=3}] if block ~-1 ~-2 ~ #permeable run function cave_in:replace_block/bottom_back

execute as @s[tag=cave_in,scores={cave_in.tick=4}] positioned ~ ~-1 ~-1 if predicate cave_in:severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[tag=additional_cave_in,scores={cave_in.tick=4}] positioned ~ ~-1 ~-1 if predicate cave_in:additional_severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
#execute as @s[scores={cave_in.tick=4}] if block ~ ~-2 ~-1 #permeable run function cave_in:replace_block/bottom_front


# Top 
execute as @s[tag=cave_in,scores={cave_in.tick=5}] positioned ~ ~1 ~ if predicate cave_in:severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[tag=additional_cave_in,scores={cave_in.tick=5}] positioned ~ ~1 ~ if predicate cave_in:additional_severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[scores={cave_in.tick=5}] if predicate cave_in:block_fall_chance positioned ~ ~1 ~ run function cave_in:replace_block

# Left
execute as @s[tag=cave_in,scores={cave_in.tick=6}] positioned ~1 ~ ~ if predicate cave_in:severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[tag=additional_cave_in,scores={cave_in.tick=6}] positioned ~1 ~ ~ if predicate cave_in:additional_severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[scores={cave_in.tick=6}] if predicate cave_in:block_fall_chance positioned ~1 ~ ~ if block ~ ~-1 ~ #permeable run function cave_in:replace_block

# Right
execute as @s[tag=cave_in,scores={cave_in.tick=7}] positioned ~ ~ ~1 if predicate cave_in:severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[tag=additional_cave_in,scores={cave_in.tick=7}] positioned ~ ~ ~1 if predicate cave_in:additional_severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[scores={cave_in.tick=7}] if predicate cave_in:block_fall_chance positioned ~ ~ ~1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block

# Back
execute as @s[tag=cave_in,scores={cave_in.tick=8}] positioned ~-1 ~ ~ if predicate cave_in:severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[tag=additional_cave_in,scores={cave_in.tick=8}] positioned ~-1 ~ ~ if predicate cave_in:additional_severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[scores={cave_in.tick=8}] if predicate cave_in:block_fall_chance positioned ~-1 ~ ~ if block ~ ~-1 ~ #permeable run function cave_in:replace_block

# Front
execute as @s[tag=cave_in,scores={cave_in.tick=9}] positioned ~ ~ ~-1 if predicate cave_in:severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[tag=additional_cave_in,scores={cave_in.tick=9}] positioned ~ ~ ~-1 if predicate cave_in:additional_severity_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon armor_stand ~ ~250 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["additional_cave_in"]}
execute as @s[scores={cave_in.tick=9}] if predicate cave_in:block_fall_chance positioned ~ ~ ~-1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block


execute as @s[scores={cave_in.tick=9..}] run kill @s