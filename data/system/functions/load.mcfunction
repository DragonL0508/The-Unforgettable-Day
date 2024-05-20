#declare storage system:npc_dialog

#scoreboard
scoreboard objectives add dialog dummy

#bossbar
bossbar add system:npc_info {"text": ""}

#team
team add npc
team modify npc color yellow
team modify npc collisionRule never