#execute anchored eyes rotated as @s positioned ^ ^ ^1 if block ^ ^ ^ polished_deepslate run function cave_in:supports/check
summon marker ~ ~250 ~ {Tags:["new_support"]}

execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_head{profile:{id:[I;-843587738,1001671284,-1115572858,1132374617]}} run tag @e[tag=new_support] add oak
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_head{profile:{id:[I;670686808,-529055055,-1304651633,-12652419]}} run tag @e[tag=new_support] add dark_oak
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_head{profile:{id:[I;-1370368749,1277316071,-2005619957,735661102]}} run tag @e[tag=new_support] add spruce
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_head{profile:{id:[I;-1611975553,1257590649,-1477637547,1111049791]}} run tag @e[tag=new_support] add birch
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_head{profile:{id:[I;1578500222,649740367,-1308206791,-1648857029]}} run tag @e[tag=new_support] add jungle
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_head{profile:{id:[I;684192821,1968131071,-1197144973,-1538410225]}} run tag @e[tag=new_support] add acacia
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_head{profile:{id:[I;1506828261,905921313,-2001181313,119837162]}} run tag @e[tag=new_support] add mangrove
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_head{profile:{id:[I;879125304,-1536145588,-1904482201,-1382263808]}} run tag @e[tag=new_support] add cherry
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_head{profile:{id:[I;-2101812418,1320110717,-1319585325,899034127]}} run tag @e[tag=new_support] add crimson
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_head{profile:{id:[I;-2013246257,-717336671,-1367796754,1373997014]}} run tag @e[tag=new_support] add warped
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_head{profile:{id:[I;1231768801,96683768,-1266961277,715783387]}} run tag @e[tag=new_support] add pale_oak

execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_wall_head{profile:{id:[I;-843587738,1001671284,-1115572858,1132374617]}} run tag @e[tag=new_support] add oak
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_wall_head{profile:{id:[I;670686808,-529055055,-1304651633,-12652419]}} run tag @e[tag=new_support] add dark_oak
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_wall_head{profile:{id:[I;-1370368749,1277316071,-2005619957,735661102]}} run tag @e[tag=new_support] add spruce
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_wall_head{profile:{id:[I;-1611975553,1257590649,-1477637547,1111049791]}} run tag @e[tag=new_support] add birch
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_wall_head{profile:{id:[I;1578500222,649740367,-1308206791,-1648857029]}} run tag @e[tag=new_support] add jungle
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_wall_head{profile:{id:[I;684192821,1968131071,-1197144973,-1538410225]}} run tag @e[tag=new_support] add acacia
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_wall_head{profile:{id:[I;1506828261,905921313,-2001181313,119837162]}} run tag @e[tag=new_support] add mangrove
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_wall_head{profile:{id:[I;879125304,-1536145588,-1904482201,-1382263808]}} run tag @e[tag=new_support] add cherry
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_wall_head{profile:{id:[I;-2101812418,1320110717,-1319585325,899034127]}} run tag @e[tag=new_support] add crimson
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_wall_head{profile:{id:[I;-2013246257,-717336671,-1367796754,1373997014]}} run tag @e[tag=new_support] add warped
execute as @e[tag=new_support] at @s positioned ~ ~-250 ~ if block ~ ~ ~ player_wall_head{profile:{id:[I;1231768801,96683768,-1266961277,715783387]}} run tag @e[tag=new_support] add pale_oak

execute as @e[tag=new_support] at @s run tp @s ~ ~1 ~
tag @e[tag=new_support] add build_support
tag @e[tag=new_support] remove new_support

scoreboard players set @s cave_in.place_player_head 0