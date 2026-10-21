#Update health and send a bunch of clusters flying!
scoreboard players operation @s HealthLimit = @s Health
scoreboard players set @s Math 5
execute positioned ~ ~15 ~ run function explorers_eve:final/wound_loop