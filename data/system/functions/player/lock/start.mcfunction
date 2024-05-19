tag @s add locking
tag @e remove locked_npc
execute as @e[tag=player_entity] at @s run tag @e[tag=npc,sort=nearest,limit=1,distance=..4] add locked_npc

#set bossbar
execute if entity @e[tag=locked_npc,tag=npc] run function system:player/lock/bossbar1 with entity @e[tag=locked_npc,limit=1]
execute if entity @e[tag=locked_npc,tag=hostile] run function system:player/lock/bossbar2

#set dialog
scoreboard players set @e[tag=locked_npc,tag=npc] dialog 0