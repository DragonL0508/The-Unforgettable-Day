#offhand detection
execute unless data entity @s Inventory[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{offhand:1b}}] run function system:player/offhand/wrong_item

#screen lock
execute unless data entity @s {Rotation:[0.0f,75.0f]} run function system:player/screen_lock
#shift detection
execute unless data entity @s RootVehicle run function system:player/buttons/shift