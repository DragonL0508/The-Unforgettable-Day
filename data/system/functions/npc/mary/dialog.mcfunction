data remove storage system:npc_dialog dialog
data remove storage system:npc_dialog name
data remove storage system:npc_dialog num

data modify storage system:npc_dialog name set value "瑪莉"

data modify storage system:npc_dialog dialog append value '"嗨小明 我的文件放在倉庫裡面"'
data modify storage system:npc_dialog dialog append value '"裡面有一隻蜘蛛 好可怕啊......"'
data modify storage system:npc_dialog dialog append value '"可以幫我殺掉牠嗎 不然我今天不用下班了"'

#talk
execute store result storage system:npc_dialog num int 1 run scoreboard players get @s dialog
function system:npc/talk with storage system:npc_dialog
execute if entity @s[tag=skip] run return run tag @s remove skip

#other stuffs
execute as @a at @s run playsound entity.villager.yes master @s ~ ~ ~ 1 1.35 1
execute if score @s dialog matches 2 run function system:npc/mary/do/show_particle