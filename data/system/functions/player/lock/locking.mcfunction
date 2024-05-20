effect give @e[tag=locked_npc] glowing 1 0 true
execute anchored eyes facing entity @e[tag=locked_npc,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=locked_npc] at @s anchored eyes facing entity @e[tag=player_entity,limit=1] eyes run tp @s ~ ~ ~ ~ ~

#
execute unless entity @e[tag=locked_npc,distance=..4] as @a[tag=player] run function system:player/lock/end with storage system:npc_dialog