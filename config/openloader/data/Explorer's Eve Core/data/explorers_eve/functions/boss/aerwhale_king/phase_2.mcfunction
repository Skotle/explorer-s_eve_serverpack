#Phase transition.
tag @s remove Phase1
tag @s add Phase2
scoreboard players set @s HintTime 450
playsound aether:entity.aerwhale.death hostile @a ~ ~ ~ 3 2

stopsound @a[distance=..40] record explorers_eve:aerwhale_king_theme_1
scoreboard players set @a[tag=AerwhaleMusic,distance=..40] MusicTime 0