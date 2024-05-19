execute unless entity @e[tag=locked_npc] run return 0

execute as @e[tag=locked_npc,tag=mary] at @s run function system:npc/mary/dialog