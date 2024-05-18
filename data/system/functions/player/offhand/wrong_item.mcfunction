#drop item in offhand
execute if data entity @s Inventory[{Slot:-106b}] run function system:player/offhand/drop


#reload offhand
clear @s #system:all{offhand:1b}
item replace entity @s weapon.offhand with carrot_on_a_stick{offhand:1b} 1

#
say pressed F