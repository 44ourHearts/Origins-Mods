execute as @s at @s run tp @s ~ ~1 ~
execute as @s at @s unless block ~ ~-1 ~ #enderian:ray_step if block ~ ~ ~ #enderian:ray_step if block ~ ~1 ~ #enderian:ray_step run tag @s add grounded
scoreboard players set @e[tag=grounded] count 3
scoreboard players add @s count 1
execute as @s unless score @s count matches 3.. run function enderian:raycast_ascend