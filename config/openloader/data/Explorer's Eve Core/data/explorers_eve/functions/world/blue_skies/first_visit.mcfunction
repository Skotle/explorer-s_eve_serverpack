#Give the player a message and some food, then instantly skip a whole bunch of progression.
tellraw @s [{"text":"The Curse of Keeping whisks your items away...","color":"yellow"}]
execute if dimension blue_skies:everbright run loot give @s loot explorers_eve:everbright_spawn
execute if dimension blue_skies:everdawn run loot give @s loot explorers_eve:everdawn_spawn
tag @s add VisitedBlueSkies