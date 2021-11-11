function enderian:raycast_start
execute as @e[tag=ray,sort=nearest,limit=1] at @s run function enderian:raycast_finish
kill @e[tag=fail]
execute as @s at @e[tag=ray,sort=nearest,limit=1] align y run tp @s ~ ~ ~ 
execute at @s as @e[tag=ray,sort=nearest,limit=1] as @a[tag=caster,sort=nearest,limit=1] run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1 1
tag @s remove caster
kill @e[tag=ray,sort=nearest,limit=1]