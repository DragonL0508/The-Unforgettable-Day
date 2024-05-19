data remove storage system:npc_dialog dialog
data remove storage system:npc_dialog name
data remove storage system:npc_dialog num

data modify storage system:npc_dialog name set value "瑪莉"

data modify storage system:npc_dialog dialog append value '"你看起來好髒，不要靠近我......"'
data modify storage system:npc_dialog dialog append value '"你再過來我就要報警了......"'

#talk
execute store result storage system:npc_dialog num int 1 run scoreboard players get @s dialog
function system:npc/talk with storage system:npc_dialog
execute if entity @s[tag=skip] run return run tag @s remove skip

#other stuffs
execute as @a at @s run playsound entity.villager.yes master @s ~ ~ ~ 1 1.35 1