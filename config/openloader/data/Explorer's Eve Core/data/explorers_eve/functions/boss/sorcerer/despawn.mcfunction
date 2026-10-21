#Give back the expensive materials!
execute if entity @s[tag=SorcererEthereal] run loot spawn ~ ~1 ~ loot explorers_eve:sorcerer_recipe_ethereal
execute if entity @s[tag=SorcererDusk] run loot spawn ~ ~1 ~ loot explorers_eve:sorcerer_recipe_dusk
execute positioned ~ ~1 ~ as @e[type=item,distance=..0.1] run data merge entity @s {Glowing:1b,Invulnerable:1b,Health:10000,Age:-32768,PickupDelay:0}

#Boss go bye-bye!
particle blue_skies:star_flare 1 0 1 ~ ~1 ~ 0.25 0.5 0.25 0.1 100
tp @s ~ ~-1000 ~
kill @s