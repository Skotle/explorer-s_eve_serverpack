#Give a hint if the player can't figure out what to do.
scoreboard players add @s HintTime 1
execute if score @s HintTime matches 600.. run title @a[distance=..64] actionbar {"text":"Defeat Ghastlings and activate a Ghast Trap to damage the Ur-Ghast!","color":"light_purple"}