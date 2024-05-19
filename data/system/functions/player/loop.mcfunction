#offhand detection
execute unless data entity @s Inventory[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{offhand:1b}}] run function system:player/offhand/wrong_item

#screen lock
execute unless data entity @s {Rotation:[0.0f,75.0f]} run function system:player/screen_lock
#shift detection
execute unless data entity @s RootVehicle run function system:player/buttons/shift

#player entity stuffs
execute as @e[tag=player_entity] run function system:player/visual_sync

#npc lock
execute if entity @s[tag=locking] as @e[tag=player_entity] at @s run function system:player/lock/locking