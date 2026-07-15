
particle smoke ~ ~ ~ 1 1 1 .01 100
summon marker ~ ~ ~ {Tags:["oil2"]}
execute as @e[type=marker,tag=oil2] run schedule function ws:battle/oil2 5s
kill @s
