tag @s remove locking

effect clear @e[tag=locked_npc] glowing
scoreboard players reset @e[tag=locked_npc] dialog
tag @e remove locked_npc

bossbar set system:npc_info visible false