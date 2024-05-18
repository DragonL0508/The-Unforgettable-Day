#player stuffs
execute as @a[tag=player] at @s run function system:player/loop
execute as @e[type=interaction,tag=view,tag=selected] on attacker at @s run function system:player/buttons/lmb
execute as @e[type=interaction,tag=view,tag=selected] on target at @s run function system:player/buttons/rmb

#kill not allowed entitys
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{offhand:1b}}}]

#no drop
execute as @e[type=item] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @e[type=item] on origin at @s run function system:player/buttons/q
execute as @e[type=item] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

#clear interaction
execute as @e[type=interaction] run data remove entity @s attack
execute as @e[type=interaction] run data remove entity @s interaction