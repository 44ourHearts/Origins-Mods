title @a[scores={cooldown=1..3}] actionbar {"color":"aqua","text":"Your quick reflexes ability is now ready!"}
scoreboard players remove @a[scores={cooldown=1..}] cooldown 1
execute if score tpRange powers matches ..0 run scoreboard players set tpRange powers 0
scoreboard players operation doubleRange numbers = tpRange powers
scoreboard players operation doubleRange numbers *= 2 numbers
scoreboard players operation reflexesTicks numbers = reflexesCooldown powers
scoreboard players operation reflexesTicks numbers *= ticksInSecond numbers
tag @a[scores={health=20..}] remove prevent
execute if score passive powers matches 1 run function enderian:passive_loop
execute if score passive powers matches 0 run team remove enderman
execute as @a[scores={settings=1..}] run function enderian:settings/menu
scoreboard players add @a[scores={settings=1..}] settings 1
execute as @a[scores={settings=200..}] run function enderian:settings/clear
scoreboard players set @a[scores={settings=200..}] settings 0