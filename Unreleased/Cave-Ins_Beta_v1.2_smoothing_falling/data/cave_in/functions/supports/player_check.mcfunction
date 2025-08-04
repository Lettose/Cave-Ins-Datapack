execute as @s[tag=!supported] if entity @e[tag=valid_support,distance=0..10] run tag @s add supported 
execute as @s[tag=supported] unless entity @s[tag=support_particle] run title @s actionbar {"text":"[Supported]","color":"gray","italic":true}
#execute as @s[tag=supported] unless entity @s[tag=support_particle] at @s anchored eyes run particle dust 0 1 0 1 ^ ^ ^1.6 0 0 0 0 1 force @a[distance=0..20]
execute as @s[tag=supported] run tag @s add support_particle
execute as @s[tag=supported] unless entity @e[tag=valid_support,distance=0..10] run tag @s add unsupported
execute as @s[tag=supported] unless entity @e[tag=valid_support,distance=0..10] run tag @s remove supported
execute as @s[tag=unsupported] run title @s actionbar {"text":"[Unsupported]","color":"dark_gray","italic":true}
#execute as @s[tag=unsupported] at @s anchored eyes run particle dust 1 0 0 1 ^ ^ ^1.6 0 0 0 0 1 force @a[distance=0..20]
execute as @s[tag=unsupported] run tag @s remove support_particle
execute as @s[tag=unsupported] run tag @s remove unsupported