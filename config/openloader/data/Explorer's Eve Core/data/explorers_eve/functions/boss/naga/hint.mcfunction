#Give a hint if the player can't figure out what to do.
scoreboard players add @s HintTime 1
execute if score @s HintTime matches 30.. run title @a[distance=..32,advancements={twilightforest:progress_naga=false}] actionbar {"text":"Use a shield to block the Naga's charge!","color":"light_purple"}