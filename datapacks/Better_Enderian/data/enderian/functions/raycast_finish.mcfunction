execute as @s at @s if block ~ ~-1 ~ #enderian:ray_step if block ~ ~-2 ~ #enderian:ray_step if block ~ ~-3 ~ #enderian:ray_step if block ~ ~-4 ~ #enderian:ray_step if block ~ ~-5 ~ #enderian:ray_step if block ~ ~ ~ #enderian:ray_step if block ~ ~1 ~ #enderian:ray_step if block ~ ~2 ~ #enderian:ray_step if block ~ ~3 ~ #enderian:ray_step if block ~ ~4 ~ #enderian:ray_step if block ~ ~5 ~ #enderian:ray_step run tag @s add fail
execute as @s at @s unless block ~ ~ ~ #enderian:ray_step if block ~ ~1 ~ #enderian:ray_step if block ~ ~2 ~ #enderian:ray_step run tp @s ~ ~1 ~
execute as @s at @s unless block ~ ~1 ~ #enderian:ray_step if block ~ ~2 ~ #enderian:ray_step if block ~ ~3 ~ #enderian:ray_step run tp @s ~ ~2 ~
execute as @s at @s unless block ~ ~ ~ #enderian:ray_step unless block ~ ~1 ~ #enderian:ray_step run tp @s ^ ^ ^-1
execute as @s at @s unless block ~ ~ ~ #enderian:ray_step unless block ~ ~2 ~ #enderian:ray_step run tp @s ^ ^ ^-1
execute as @s at @s unless block ~ ~-1 ~ #enderian:ray_step if block ~ ~ ~ #enderian:ray_step if block ~ ~1 ~ #enderian:ray_step run tag @s add grounded
scoreboard players set @s[tag=!grounded] count 0
execute as @s[tag=!grounded] run function enderian:raycast_descend
execute as @s[tag=!grounded] at @s run tp @s ~ ~5 ~
execute as @s[tag=!grounded] at @s run tp @s ^ ^ ^1
scoreboard players set @s[tag=!grounded] count 0
execute as @s[tag=!grounded] run function enderian:raycast_ascend
execute as @s[tag=!grounded] run tag @s add fail
execute as @s at @s if block ~ ~ ~ water run tag @s add fail
execute as @s at @s if block ~ ~-1 ~ water run tag @s add fail