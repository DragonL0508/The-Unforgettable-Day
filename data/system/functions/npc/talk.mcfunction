data remove storage system:npc_dialog string
$data modify storage system:npc_dialog string set from storage system:npc_dialog dialog[$(num)]
execute unless data storage system:npc_dialog string run return run tag @s add skip

tellraw @a {"text": ""}
function system:npc/send with storage system:npc_dialog
tellraw @a {"text": ""}

scoreboard players add @s dialog 1