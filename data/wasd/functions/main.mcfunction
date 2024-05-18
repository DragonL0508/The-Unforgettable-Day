#execute as @a if predicate wasd:is_mounted run function wasd:demos/onno_compare
execute as @a[tag=player] at @s run function wasd:demos/print_subtitle_mounted
#execute as @a run function wasd:demos/print_subtitle_walking