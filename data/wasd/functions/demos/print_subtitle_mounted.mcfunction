execute if predicate wasd:is_mounted run function wasd:mounted
#execute if score .w wasd matches 1 run data modify storage test temp append value '{"text":"W","color":"green"}'
#execute if score .s wasd matches 1 run data modify storage test temp append value '{"text":"S","color":"green"}'
#execute if score .a wasd matches 1 run data modify storage test temp append value '{"text":"A","color":"green"}'
#execute if score .d wasd matches 1 run data modify storage test temp append value '{"text":"D","color":"green"}'
#title @a subtitle [{"nbt":"temp[]","storage":"test","interpret":true,"separator":{"text":""}}]
execute if score .w wasd matches 1 unless score .a wasd matches 1 unless score .d wasd matches 1 run function system:player/buttons/movement/w
execute if score .a wasd matches 1 unless score .w wasd matches 1 unless score .s wasd matches 1 run function system:player/buttons/movement/a
execute if score .s wasd matches 1 unless score .a wasd matches 1 unless score .d wasd matches 1 run function system:player/buttons/movement/s
execute if score .d wasd matches 1 unless score .w wasd matches 1 unless score .s wasd matches 1 run function system:player/buttons/movement/d

execute if score .w wasd matches 1 if score .a wasd matches 1 run function system:player/buttons/movement/wa
execute if score .s wasd matches 1 if score .a wasd matches 1 run function system:player/buttons/movement/as
execute if score .s wasd matches 1 if score .d wasd matches 1 run function system:player/buttons/movement/sd
execute if score .w wasd matches 1 if score .d wasd matches 1 run function system:player/buttons/movement/wd