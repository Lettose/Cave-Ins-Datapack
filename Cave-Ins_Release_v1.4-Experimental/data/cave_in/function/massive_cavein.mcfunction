execute if predicate cave_in:add_tick_chance run scoreboard players add @s cave_in.tick 1

#execute as @s[tag=massive_cave_in,scores={cave_in.tick=1}] run say Massive Cave In!
#execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=1}] run say Additional..
execute as @s[tag=caused_by_tnt,scores={cave_in.tick=1..30}] run scoreboard players set @s cave_in.tick 31

execute as @s[tag=massive_cave_in,scores={cave_in.tick=1..30}] positioned ~ ~-0.2 ~ run function cave_in:falling_block_particles_and_sounds/rumble_effect
execute as @s[tag=massive_cave_in,scores={cave_in.tick=31}] positioned ~1 ~-1 ~ unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=1}] positioned ~1 ~-1 ~ if predicate cave_in:massive_additional_severity_vertical_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}

execute as @s[tag=massive_cave_in,scores={cave_in.tick=33}] positioned ~ ~-1 ~1 unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=3}] positioned ~ ~-1 ~1 if predicate cave_in:massive_additional_severity_vertical_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}

execute as @s[tag=massive_cave_in,scores={cave_in.tick=35}] positioned ~-1 ~-1 ~ unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=5}] positioned ~-1 ~-1 ~ if predicate cave_in:massive_additional_severity_vertical_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}

execute as @s[tag=massive_cave_in,scores={cave_in.tick=37}] positioned ~ ~-1 ~-1 unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=7}] positioned ~ ~-1 ~-1 if predicate cave_in:massive_additional_severity_vertical_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}



# Top
execute as @s[tag=massive_cave_in,scores={cave_in.tick=39}] positioned ~ ~1 ~ unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=9}] positioned ~ ~1 ~ if predicate cave_in:massive_additional_severity_vertical_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_cave_in,scores={cave_in.tick=39}] positioned ~ ~1 ~ if block ~ ~-1 ~ #permeable run function cave_in:replace_block
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=9}] positioned ~ ~1 ~ if block ~ ~-1 ~ #permeable run function cave_in:replace_block

# Left
execute as @s[tag=massive_cave_in,scores={cave_in.tick=41}] positioned ~1 ~ ~ unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=11}] positioned ~1 ~ ~ if predicate cave_in:massive_additional_severity_vertical_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_cave_in,scores={cave_in.tick=41}] positioned ~1 ~ ~ if block ~ ~-1 ~ #permeable run function cave_in:replace_block
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=11}] positioned ~1 ~ ~ if block ~ ~-1 ~ #permeable run function cave_in:replace_block

# Right
execute as @s[tag=massive_cave_in,scores={cave_in.tick=43}] positioned ~ ~ ~1 unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=13}] positioned ~ ~ ~1 if predicate cave_in:massive_additional_severity_vertical_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_cave_in,scores={cave_in.tick=43}] positioned ~ ~ ~1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=13}] positioned ~ ~ ~1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block

# Back
execute as @s[tag=massive_cave_in,scores={cave_in.tick=45}] positioned ~-1 ~ ~ unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=15}] positioned ~-1 ~ ~ if predicate cave_in:massive_additional_severity_vertical_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_cave_in,scores={cave_in.tick=45}] positioned ~-1 ~ ~ if block ~ ~-1 ~ #permeable run function cave_in:replace_block
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=15}] positioned ~-1 ~ ~ if block ~ ~-1 ~ #permeable run function cave_in:replace_block

# Front
execute as @s[tag=massive_cave_in,scores={cave_in.tick=47}] positioned ~ ~ ~-1 unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=17}] positioned ~ ~ ~-1 if predicate cave_in:massive_additional_severity_vertical_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_cave_in,scores={cave_in.tick=47}] positioned ~ ~ ~-1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=17}] positioned ~ ~ ~-1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block




# Bottom Left Diagonal
execute as @s[tag=massive_cave_in,scores={cave_in.tick=31}] positioned ~1 ~-1 ~1 unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=6}] positioned ~1 ~-1 ~1 if predicate cave_in:massive_additional_severity_horizontal_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_cave_in,scores={cave_in.tick=39}] positioned ~1 ~-1 ~1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=9}] positioned ~1 ~-1 ~1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block

# Bottom Right Diagonal
execute as @s[tag=massive_cave_in,scores={cave_in.tick=32}] positioned ~1 ~-1 ~-1 unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=7}] positioned ~1 ~-1 ~-1 if predicate cave_in:massive_additional_severity_horizontal_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_cave_in,scores={cave_in.tick=41}] positioned ~1 ~-1 ~-1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=11}] positioned ~1 ~-1 ~-1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block

# Bottom Back Diagonal
execute as @s[tag=massive_cave_in,scores={cave_in.tick=33}] positioned ~-1 ~-1 ~1 unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=8}] positioned ~-1 ~-1 ~1 if predicate cave_in:massive_additional_severity_horizontal_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_cave_in,scores={cave_in.tick=43}] positioned ~-1 ~-1 ~1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=13}] positioned ~-1 ~-1 ~1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block

# Bottom Front Diagonal
execute as @s[tag=massive_cave_in,scores={cave_in.tick=34}] positioned ~-1 ~-1 ~-1 unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=9}] positioned ~-1 ~-1 ~-1 if predicate cave_in:massive_additional_severity_horizontal_chance unless block ~ ~ ~ #permeable if block ~ ~-1 ~ #permeable run summon marker ~ ~250 ~ {Tags:["massive_additional_cave_in"]}
execute as @s[tag=massive_cave_in,scores={cave_in.tick=45}] positioned ~-1 ~-1 ~-1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block
execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=15}] positioned ~-1 ~-1 ~-1 if block ~ ~-1 ~ #permeable run function cave_in:replace_block


execute as @s[tag=massive_additional_cave_in,scores={cave_in.tick=18..}] run kill @s

# execute as @s[tag=massive_cave_in,scores={cave_in.tick=130}] at @s run say Done!
execute as @s[tag=massive_cave_in,scores={cave_in.tick=130}] at @s run kill @e[tag=massive_additional_cave_in,distance=..20]
execute as @s[tag=massive_cave_in,scores={cave_in.tick=130..}] run kill @s