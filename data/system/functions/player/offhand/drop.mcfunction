#
execute if data entity @s SelectedItem{tag:{offhand:1b}} run return run item replace entity @s weapon.mainhand from entity @s weapon.offhand

#drop
summon item ~ ~ ~ {PickupDelay:0,Tags:["this"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=this,sort=nearest,limit=1] Thrower set from entity @s UUID
data modify entity @e[type=item,tag=this,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:-106b}]
tag @e[type=item,tag=this] remove this