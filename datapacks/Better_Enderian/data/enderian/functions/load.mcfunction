scoreboard objectives add enderianLoad dummy
execute unless score load enderianLoad matches 1 run function enderian:first_load
scoreboard players set load enderianLoad 1
execute as @a run function enderian:update_origin
tellraw @a {"color":"gold","text":"Enderian origin modifications loaded"}