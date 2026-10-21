#Give a hint if the player can't figure out what to do.
scoreboard players remove @s HintTime 1
execute if score @s HintTime matches 1..400 run title @a[distance=..32] actionbar {"text":"Listen carefully to tell where the Aerwhale King is!","color":"light_purple"}