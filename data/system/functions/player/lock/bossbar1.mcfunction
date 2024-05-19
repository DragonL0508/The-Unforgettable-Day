bossbar set system:npc_info max 1
bossbar set system:npc_info value 1
bossbar set system:npc_info style progress
bossbar set system:npc_info color yellow
bossbar set system:npc_info visible true
bossbar set system:npc_info players @s

$bossbar set system:npc_info name [{"text": $(CustomName),"color": "yellow","bold": true},{"text": " §7(右鍵對話)"}]