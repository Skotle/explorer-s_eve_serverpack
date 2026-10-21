#Give a hint if the player can't figure out what to do.
scoreboard players add @s HintTime 1
execute if score @s HintTime matches 400.. run title @a[distance=..32] actionbar {"text":"Avoid jumping so the whirlwinds can't toss you as far!","color":"light_purple"}