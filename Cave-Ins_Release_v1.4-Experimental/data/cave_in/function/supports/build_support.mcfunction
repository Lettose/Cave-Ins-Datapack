scoreboard players add @s cave_in.tick 1

execute as @s[scores={cave_in.tick=1..10}] unless block ~ ~ ~ player_head unless block ~ ~ ~ player_wall_head run kill @s
execute as @s[scores={cave_in.tick=1..10}] unless block ~ ~1 ~ #permeable run function cave_in:supports/destroy_support
execute as @s[scores={cave_in.tick=1..10}] if block ~ ~-1 ~ #permeable run function cave_in:supports/destroy_support

execute as @s[scores={cave_in.tick=11..110}] run function cave_in:supports/check_valid_support

execute as @s[scores={cave_in.tick=10}] at @s run tp @s ~ ~1 ~
execute as @s[scores={cave_in.tick=10}] run setblock ~ ~ ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=10}] run setblock ~ ~1 ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=10}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=10}] run tag @s add 2_blocks_tall
execute as @s[scores={cave_in.tick=10}] unless block ~ ~2 ~ #permeable run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=20}] run tag @s remove 2_blocks_tall

execute as @s[scores={cave_in.tick=20}] at @s run tp @s ~ ~1 ~
execute as @s[tag=spruce,scores={cave_in.tick=20}] run setblock ~ ~ ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=20}] run setblock ~ ~ ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=20}] run setblock ~ ~ ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=20}] run setblock ~ ~ ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=20}] run setblock ~ ~ ~ jungle_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=20}] run setblock ~ ~ ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=20}] run setblock ~ ~ ~ cherry_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=20}] run setblock ~ ~ ~ acacia_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=20}] run setblock ~ ~ ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=20}] run setblock ~ ~ ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=20}] run setblock ~ ~1 ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=20}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=20}] run tag @s add 3_blocks_tall
execute as @s[scores={cave_in.tick=20}] unless block ~ ~2 ~ #permeable run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=30}] run tag @s remove 3_blocks_tall

execute as @s[scores={cave_in.tick=30}] at @s run tp @s ~ ~1 ~
execute as @s[tag=spruce,scores={cave_in.tick=30}] run setblock ~ ~ ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=30}] run setblock ~ ~ ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=30}] run setblock ~ ~ ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=30}] run setblock ~ ~ ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=30}] run setblock ~ ~ ~ jungle_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=30}] run setblock ~ ~ ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=30}] run setblock ~ ~ ~ cherry_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=30}] run setblock ~ ~ ~ acacia_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=30}] run setblock ~ ~ ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=30}] run setblock ~ ~ ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=30}] run setblock ~ ~1 ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=30}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=30}] run tag @s add 4_blocks_tall
execute as @s[scores={cave_in.tick=30}] unless block ~ ~2 ~ #permeable run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=40}] run tag @s remove 4_blocks_tall

execute as @s[scores={cave_in.tick=40}] at @s run tp @s ~ ~1 ~
execute as @s[tag=spruce,scores={cave_in.tick=40}] run setblock ~ ~ ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=40}] run setblock ~ ~ ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=40}] run setblock ~ ~ ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=40}] run setblock ~ ~ ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=40}] run setblock ~ ~ ~ jungle_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=40}] run setblock ~ ~ ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=40}] run setblock ~ ~ ~ cherry_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=40}] run setblock ~ ~ ~ acacia_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=40}] run setblock ~ ~ ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=40}] run setblock ~ ~ ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=40}] run setblock ~ ~1 ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=40}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=40}] run tag @s add 5_blocks_tall
execute as @s[scores={cave_in.tick=40}] unless block ~ ~2 ~ #permeable run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=50}] run tag @s remove 5_blocks_tall

execute as @s[scores={cave_in.tick=50}] at @s run tp @s ~ ~1 ~
execute as @s[tag=spruce,scores={cave_in.tick=50}] run setblock ~ ~ ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=50}] run setblock ~ ~ ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=50}] run setblock ~ ~ ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=50}] run setblock ~ ~ ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=50}] run setblock ~ ~ ~ jungle_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=50}] run setblock ~ ~ ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=50}] run setblock ~ ~ ~ cherry_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=50}] run setblock ~ ~ ~ acacia_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=50}] run setblock ~ ~ ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=50}] run setblock ~ ~ ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=50}] run setblock ~ ~1 ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=50}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=50}] run tag @s add 6_blocks_tall
execute as @s[scores={cave_in.tick=50}] unless block ~ ~2 ~ #permeable run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=60}] run tag @s remove 6_blocks_tall

execute as @s[scores={cave_in.tick=60}] at @s run tp @s ~ ~1 ~
execute as @s[tag=spruce,scores={cave_in.tick=60}] run setblock ~ ~ ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=60}] run setblock ~ ~ ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=60}] run setblock ~ ~ ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=60}] run setblock ~ ~ ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=60}] run setblock ~ ~ ~ jungle_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=60}] run setblock ~ ~ ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=60}] run setblock ~ ~ ~ cherry_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=60}] run setblock ~ ~ ~ acacia_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=60}] run setblock ~ ~ ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=60}] run setblock ~ ~ ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=60}] run setblock ~ ~1 ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=60}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=60}] run tag @s add 7_blocks_tall
execute as @s[scores={cave_in.tick=60}] unless block ~ ~2 ~ #permeable run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=70}] run tag @s remove 7_blocks_tall

execute as @s[scores={cave_in.tick=70}] at @s run tp @s ~ ~1 ~
execute as @s[tag=spruce,scores={cave_in.tick=70}] run setblock ~ ~ ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=70}] run setblock ~ ~ ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=70}] run setblock ~ ~ ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=70}] run setblock ~ ~ ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=70}] run setblock ~ ~ ~ jungle_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=70}] run setblock ~ ~ ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=70}] run setblock ~ ~ ~ cherry_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=70}] run setblock ~ ~ ~ acacia_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=70}] run setblock ~ ~ ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=70}] run setblock ~ ~ ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=70}] run setblock ~ ~1 ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=70}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=70}] run tag @s add 8_blocks_tall
execute as @s[scores={cave_in.tick=70}] unless block ~ ~2 ~ #permeable run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=80}] run tag @s remove 8_blocks_tall

execute as @s[scores={cave_in.tick=80}] at @s run tp @s ~ ~1 ~
execute as @s[tag=spruce,scores={cave_in.tick=80}] run setblock ~ ~ ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=80}] run setblock ~ ~ ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=80}] run setblock ~ ~ ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=80}] run setblock ~ ~ ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=80}] run setblock ~ ~ ~ jungle_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=80}] run setblock ~ ~ ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=80}] run setblock ~ ~ ~ cherry_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=80}] run setblock ~ ~ ~ acacia_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=80}] run setblock ~ ~ ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=80}] run setblock ~ ~ ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=80}] run setblock ~ ~1 ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=80}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=80}] run tag @s add 9_blocks_tall
execute as @s[scores={cave_in.tick=80}] unless block ~ ~2 ~ #permeable run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=90}] run tag @s remove 9_blocks_tall

execute as @s[scores={cave_in.tick=90}] at @s run tp @s ~ ~1 ~
execute as @s[tag=spruce,scores={cave_in.tick=90}] run setblock ~ ~ ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=90}] run setblock ~ ~ ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=90}] run setblock ~ ~ ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=90}] run setblock ~ ~ ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=90}] run setblock ~ ~ ~ jungle_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=90}] run setblock ~ ~ ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=90}] run setblock ~ ~ ~ cherry_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=90}] run setblock ~ ~ ~ acacia_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=90}] run setblock ~ ~ ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=90}] run setblock ~ ~ ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=90}] run setblock ~ ~1 ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=90}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=90}] run tag @s add 10_blocks_tall
execute as @s[scores={cave_in.tick=90}] unless block ~ ~2 ~ #permeable run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=100}] run tag @s remove 10_blocks_tall


execute as @s[scores={cave_in.tick=100}] run function cave_in:supports/destroy_support


execute as @s[scores={cave_in.tick=110..}] run tag @s add valid_support
execute as @s[scores={cave_in.tick=110..}] run tag @s remove build_support
execute as @s[scores={cave_in.tick=110..}] run scoreboard players set @s cave_in.tick 0

