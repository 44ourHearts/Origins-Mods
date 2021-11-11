team add enderman
execute as @e[type=enderman] store result score @s health run data get entity @s Health
team join enderman @e[type=enderman,scores={health=40..}]
team leave @e[type=enderman,scores={health=..39}]