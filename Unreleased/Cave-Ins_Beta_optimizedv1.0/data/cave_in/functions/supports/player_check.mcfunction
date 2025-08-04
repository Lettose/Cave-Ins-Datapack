execute as @s[tag=!supported] if entity @e[tag=valid_support,distance=0..10] run tag @s add supported 
execute as @s[tag=supported] unless entity @e[tag=valid_support,distance=0..10] run tag @s add unsupported
execute as @s[tag=supported] unless entity @e[tag=valid_support,distance=0..10] run tag @s remove supported
execute as @s[tag=supported] run title @s actionbar {"text":"Supported","color":"dark_green"}
execute as @s[tag=unsupported] run title @s actionbar {"text":"Unsupported","color":"dark_red"}
execute as @s[tag=unsupported] run tag @s remove unsupported