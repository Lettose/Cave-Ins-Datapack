execute as @s if block ~ ~9 ~ #support_blocks run setblock ~ ~9 ~ air destroy
execute as @s if block ~ ~8 ~ #support_blocks run setblock ~ ~8 ~ air destroy
execute as @s if block ~ ~7 ~ #support_blocks run setblock ~ ~7 ~ air destroy
execute as @s if block ~ ~6 ~ #support_blocks run setblock ~ ~6 ~ air destroy
execute as @s if block ~ ~5 ~ #support_blocks run setblock ~ ~5 ~ air destroy
execute as @s if block ~ ~4 ~ #support_blocks run setblock ~ ~4 ~ air destroy
execute as @s if block ~ ~3 ~ #support_blocks run setblock ~ ~3 ~ air destroy
execute as @s if block ~ ~2 ~ #support_blocks run setblock ~ ~2 ~ air destroy
execute as @s if block ~ ~1 ~ #support_blocks run setblock ~ ~1 ~ air destroy
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


execute as @s run summon item ~ ~ ~ {Item:{id:"minecraft:polished_deepslate",Count:1b}}

execute as @s[tag=spruce] run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_spruce_wood",Count:1b}}
execute as @s[tag=oak] run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_oak_wood",Count:1b}}
execute as @s[tag=dark_oak] run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_dark_oak_wood",Count:1b}}
execute as @s[tag=birch] run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_birch_wood",Count:1b}}
execute as @s[tag=jungle] run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_jungle_wood",Count:1b}}
execute as @s[tag=mangrove] run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_mangrove_wood",Count:1b}}
execute as @s[tag=cherry] run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_cherry_wood",Count:1b}}
execute as @s[tag=acacia] run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_acacia_wood",Count:1b}}
execute as @s[tag=warped] run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_warped_hyphae",Count:1b}}
execute as @s[tag=crimson] run summon item ~ ~ ~ {Item:{id:"minecraft:stripped_crimson_hyphae",Count:1b}}

execute as @s run kill @s
