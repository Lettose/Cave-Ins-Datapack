scoreboard players add @s cave_in.tick 1

execute as @s[scores={cave_in.tick=1..10}] unless block ~ ~ ~ #stripped_wood_blocks run kill @s
execute as @s[scores={cave_in.tick=1..10}] unless block ~ ~1 ~ polished_deepslate run kill @s

execute as @s[scores={cave_in.tick=11..110}] run function cave_in:supports/check_valid_support

execute as @s[scores={cave_in.tick=10}] run setblock ~ ~ ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=10}] run setblock ~ ~1 ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=10}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=10}] run tag @s add 2_blocks_tall
execute as @s[scores={cave_in.tick=10}] unless block ~ ~2 ~ air run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=20}] run tag @s remove 2_blocks_tall

execute as @s[scores={cave_in.tick=20}] run setblock ~ ~ ~ polished_deepslate_wall destroy
execute as @s[tag=spruce,scores={cave_in.tick=20}] run setblock ~ ~1 ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=20}] run setblock ~ ~1 ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=20}] run setblock ~ ~1 ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=20}] run setblock ~ ~1 ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=20}] run setblock ~ ~1 ~ jungle_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=20}] run setblock ~ ~1 ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=20}] run setblock ~ ~1 ~ cherry_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=20}] run setblock ~ ~1 ~ acacia_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=20}] run setblock ~ ~1 ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=20}] run setblock ~ ~1 ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=20}] run setblock ~ ~2 ~ polished_deepslate_wall destroy
execute as @s[scores={cave_in.tick=20}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=20}] run tag @s add 3_blocks_tall
execute as @s[scores={cave_in.tick=20}] unless block ~ ~3 ~ air run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=30}] run tag @s remove 3_blocks_tall

execute as @s[scores={cave_in.tick=30}] run setblock ~ ~3 ~ polished_deepslate_wall destroy
execute as @s[tag=spruce,scores={cave_in.tick=30}] run setblock ~ ~2 ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=30}] run setblock ~ ~2 ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=30}] run setblock ~ ~2 ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=30}] run setblock ~ ~2 ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=30}] run setblock ~ ~2 ~ jungle_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=30}] run setblock ~ ~2 ~ acacia_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=30}] run setblock ~ ~2 ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=30}] run setblock ~ ~2 ~ cherry_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=30}] run setblock ~ ~2 ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=30}] run setblock ~ ~2 ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=30}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=30}] run tag @s add 4_blocks_tall
execute as @s[scores={cave_in.tick=30}] unless block ~ ~4 ~ air run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=40}] run tag @s remove 4_blocks_tall

execute as @s[scores={cave_in.tick=40}] run setblock ~ ~4 ~ polished_deepslate_wall destroy 
execute as @s[tag=spruce,scores={cave_in.tick=40}] run setblock ~ ~3 ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=40}] run setblock ~ ~3 ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=40}] run setblock ~ ~3 ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=40}] run setblock ~ ~3 ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=40}] run setblock ~ ~3 ~ jungle_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=40}] run setblock ~ ~3 ~ acacia_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=40}] run setblock ~ ~3 ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=40}] run setblock ~ ~3 ~ cherry_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=40}] run setblock ~ ~3 ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=40}] run setblock ~ ~3 ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=40}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=40}] run tag @s add 5_blocks_tall
execute as @s[scores={cave_in.tick=40}] unless block ~ ~5 ~ air run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=50}] run tag @s remove 5_blocks_tall

execute as @s[scores={cave_in.tick=50}] run setblock ~ ~5 ~ polished_deepslate_wall destroy
execute as @s[tag=spruce,scores={cave_in.tick=50}] run setblock ~ ~4 ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=50}] run setblock ~ ~4 ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=50}] run setblock ~ ~4 ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=50}] run setblock ~ ~4 ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=50}] run setblock ~ ~4 ~ jungle_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=50}] run setblock ~ ~4 ~ acacia_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=50}] run setblock ~ ~4 ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=50}] run setblock ~ ~4 ~ cherry_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=50}] run setblock ~ ~4 ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=50}] run setblock ~ ~4 ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=50}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=50}] run tag @s add 6_blocks_tall
execute as @s[scores={cave_in.tick=50}] unless block ~ ~6 ~ air run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=60}] run tag @s remove 6_blocks_tall

execute as @s[scores={cave_in.tick=60}] run setblock ~ ~6 ~ polished_deepslate_wall destroy
execute as @s[tag=spruce,scores={cave_in.tick=60}] run setblock ~ ~5 ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=60}] run setblock ~ ~5 ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=60}] run setblock ~ ~5 ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=60}] run setblock ~ ~5 ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=60}] run setblock ~ ~5 ~ jungle_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=60}] run setblock ~ ~5 ~ acacia_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=60}] run setblock ~ ~5 ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=60}] run setblock ~ ~5 ~ cherry_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=60}] run setblock ~ ~5 ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=60}] run setblock ~ ~5 ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=60}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=60}] run tag @s add 7_blocks_tall
execute as @s[scores={cave_in.tick=60}] unless block ~ ~7 ~ air run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=70}] run tag @s remove 7_blocks_tall

execute as @s[scores={cave_in.tick=70}] run setblock ~ ~7 ~ polished_deepslate_wall destroy
execute as @s[tag=spruce,scores={cave_in.tick=70}] run setblock ~ ~6 ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=70}] run setblock ~ ~6 ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=70}] run setblock ~ ~6 ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=70}] run setblock ~ ~6 ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=70}] run setblock ~ ~6 ~ jungle_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=70}] run setblock ~ ~6 ~ acacia_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=70}] run setblock ~ ~6 ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=70}] run setblock ~ ~6 ~ cherry_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=70}] run setblock ~ ~6 ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=70}] run setblock ~ ~6 ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=70}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=70}] run tag @s add 8_blocks_tall
execute as @s[scores={cave_in.tick=70}] unless block ~ ~8 ~ air run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=80}] run tag @s remove 8_blocks_tall

execute as @s[scores={cave_in.tick=80}] run setblock ~ ~8 ~ polished_deepslate_wall destroy
execute as @s[tag=spruce,scores={cave_in.tick=80}] run setblock ~ ~7 ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=80}] run setblock ~ ~7 ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=80}] run setblock ~ ~7 ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=80}] run setblock ~ ~7 ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=80}] run setblock ~ ~7 ~ jungle_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=80}] run setblock ~ ~7 ~ acacia_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=80}] run setblock ~ ~7 ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=80}] run setblock ~ ~7 ~ cherry_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=80}] run setblock ~ ~7 ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=80}] run setblock ~ ~7 ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=80}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=80}] run tag @s add 9_blocks_tall
execute as @s[scores={cave_in.tick=80}] unless block ~ ~9 ~ air run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=90}] run tag @s remove 9_blocks_tall

execute as @s[scores={cave_in.tick=90}] run setblock ~ ~9 ~ polished_deepslate_wall destroy
execute as @s[tag=spruce,scores={cave_in.tick=90}] run setblock ~ ~8 ~ spruce_fence destroy
execute as @s[tag=oak,scores={cave_in.tick=90}] run setblock ~ ~8 ~ oak_fence destroy
execute as @s[tag=dark_oak,scores={cave_in.tick=90}] run setblock ~ ~8 ~ dark_oak_fence destroy
execute as @s[tag=birch,scores={cave_in.tick=90}] run setblock ~ ~8 ~ birch_fence destroy
execute as @s[tag=jungle,scores={cave_in.tick=90}] run setblock ~ ~8 ~ jungle_fence destroy
execute as @s[tag=acacia,scores={cave_in.tick=90}] run setblock ~ ~8 ~ acacia_fence destroy
execute as @s[tag=mangrove,scores={cave_in.tick=90}] run setblock ~ ~8 ~ mangrove_fence destroy
execute as @s[tag=cherry,scores={cave_in.tick=90}] run setblock ~ ~8 ~ cherry_fence destroy
execute as @s[tag=warped,scores={cave_in.tick=90}] run setblock ~ ~8 ~ warped_fence destroy
execute as @s[tag=crimson,scores={cave_in.tick=90}] run setblock ~ ~8 ~ crimson_fence destroy
execute as @s[scores={cave_in.tick=90}] run kill @e[type=item,nbt={Age:0s},limit=2,sort=nearest]
execute as @s[scores={cave_in.tick=90}] run tag @s add 10_blocks_tall
execute as @s[scores={cave_in.tick=90}] unless block ~ ~10 ~ air run scoreboard players set @s cave_in.tick 110
execute as @s[scores={cave_in.tick=100}] run tag @s remove 10_blocks_tall


execute as @s[scores={cave_in.tick=100}] run function cave_in:supports/destroy_support


execute as @s[scores={cave_in.tick=110..}] run tag @s add valid_support
execute as @s[scores={cave_in.tick=110..}] run tag @s remove build_support
execute as @s[scores={cave_in.tick=110..}] run scoreboard players set @s cave_in.tick 0

