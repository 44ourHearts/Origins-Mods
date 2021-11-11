execute as @s at @s if block ~ ~ ~ #enderian:ray_step run tp @s ^ ^ ^0.5
execute as @s at @s unless block ~ ~ ~ #enderian:ray_step run scoreboard players operation @s count = doubleRange numbers
scoreboard players add @s count 1
execute as @s unless score @s count >= doubleRange numbers run function enderian:raycast_step