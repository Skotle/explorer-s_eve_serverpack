#Cancel the summoning and say why.
execute if score @s Math matches 0 run tellraw @p[gamemode=!spectator,distance=..32] [{"text":"This message should not appear. I'll be afraid if it does.","color":"light_purple"}]
execute if score @s Math matches 1 run tellraw @p[gamemode=!spectator,distance=..32] [{"text":"A Nameless Sorcerer has already spawned!","color":"light_purple"}]
execute if score @s Math matches 2 run tellraw @p[gamemode=!spectator,distance=..32] [{"text":"The Nameless Sorcerer can't be fought in this dimension!","color":"light_purple"}]
execute if score @s Math matches 3 run tellraw @p[gamemode=!spectator,distance=..32] [{"text":"The Nameless Sorcerer can only be fought on the surface!","color":"light_purple"}]
execute if score @s Math matches 4 run tellraw @p[gamemode=!spectator,distance=..32] [{"text":"This biome is too watery for a proper fight! Go somewhere else!","color":"light_purple"}]

#Use scoreboards to prevent instant vexes!
scoreboard players set @s SorcererVexTime 1000
scoreboard players set @s SorcererTeleportTime 300

#Effects!
particle blue_skies:star_flare 1 0 1 ~ ~1 ~ 0.25 0.5 0.25 0.1 100

#And give back those expensive items!
execute if entity @s[tag=SorcererEthereal] run loot spawn ~ ~1 ~ loot explorers_eve:sorcerer_recipe_ethereal
execute if entity @s[tag=SorcererDusk] run loot spawn ~ ~1 ~ loot explorers_eve:sorcerer_recipe_dusk
execute positioned ~ ~1 ~ as @e[type=item,distance=..0.1] run data merge entity @s {Glowing:1b,Invulnerable:1b,Health:10000,Age:-32768,PickupDelay:0}

#Then instant despawn!
tp @s ~ -1000 ~
kill @s