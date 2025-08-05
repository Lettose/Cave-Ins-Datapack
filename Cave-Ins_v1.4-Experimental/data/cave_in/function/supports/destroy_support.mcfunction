execute as @s if block ~ ~-9 ~ #support_blocks run setblock ~ ~-9 ~ air destroy
execute as @s if block ~ ~-8 ~ #support_blocks run setblock ~ ~-8 ~ air destroy
execute as @s if block ~ ~-7 ~ #support_blocks run setblock ~ ~-7 ~ air destroy
execute as @s if block ~ ~-6 ~ #support_blocks run setblock ~ ~-6 ~ air destroy
execute as @s if block ~ ~-5 ~ #support_blocks run setblock ~ ~-5 ~ air destroy
execute as @s if block ~ ~-4 ~ #support_blocks run setblock ~ ~-4 ~ air destroy
execute as @s if block ~ ~-3 ~ #support_blocks run setblock ~ ~-3 ~ air destroy
execute as @s if block ~ ~-2 ~ #support_blocks run setblock ~ ~-2 ~ air destroy
execute as @s if block ~ ~-1 ~ #support_blocks run setblock ~ ~-1 ~ air destroy
execute as @s if block ~ ~ ~ #support_blocks run setblock ~ ~ ~ air destroy

execute as @s run kill @e[type=item,nbt={Age:0s},distance=0..10,limit=10,sort=nearest]
execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:polished_deepslate_wall"}},distance=0..10,limit=1,sort=nearest]

execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:oak_fence"}},distance=0..10,limit=1,sort=nearest]
execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_fence"}},distance=0..10,limit=1,sort=nearest]
execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:jungle_fence"}},distance=0..10,limit=1,sort=nearest]
execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:birch_fence"}},distance=0..10,limit=1,sort=nearest]
execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:spruce_fence"}},distance=0..10,limit=1,sort=nearest]
execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:cherry_fence"}},distance=0..10,limit=1,sort=nearest]
execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:mangrove_fence"}},distance=0..10,limit=1,sort=nearest]
execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:acacia_fence"}},distance=0..10,limit=1,sort=nearest]
execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:warped_fence"}},distance=0..10,limit=1,sort=nearest]
execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:crimson_fence"}},distance=0..10,limit=1,sort=nearest]
execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:pale_oak_fence"}},distance=0..10,limit=1,sort=nearest]


execute as @s[tag=oak] positioned ~ ~-1 ~ run function cave_in:supports/summon_supports/oak
execute as @s[tag=dark_oak] positioned ~ ~-1 ~ run function cave_in:supports/summon_supports/dark_oak
execute as @s[tag=spruce] positioned ~ ~-1 ~ run function cave_in:supports/summon_supports/spruce
execute as @s[tag=birch] positioned ~ ~-1 ~ run function cave_in:supports/summon_supports/birch
execute as @s[tag=jungle] positioned ~ ~-1 ~ run function cave_in:supports/summon_supports/jungle
execute as @s[tag=acacia] positioned ~ ~-1 ~ run function cave_in:supports/summon_supports/acacia
execute as @s[tag=mangrove] positioned ~ ~-1 ~ run function cave_in:supports/summon_supports/mangrove
execute as @s[tag=cherry] positioned ~ ~-1 ~ run function cave_in:supports/summon_supports/cherry
execute as @s[tag=crimson] positioned ~ ~-1 ~ run function cave_in:supports/summon_supports/crimson
execute as @s[tag=warped] positioned ~ ~-1 ~ run function cave_in:supports/summon_supports/warped
execute as @s[tag=pale_oak] positioned ~ ~-1 ~ run function cave_in:supports/summon_supports/pale_oak

execute as @s run kill @s