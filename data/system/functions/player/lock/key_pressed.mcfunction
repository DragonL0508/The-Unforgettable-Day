execute if entity @s[tag=!locking] as @e[tag=player_entity] at @s unless entity @e[tag=npc,distance=..4] run return 0
execute if entity @s[tag=!locking] run return run function system:player/lock/start
execute if entity @s[tag=locking] run return run function system:player/lock/end with storage system:npc_dialog