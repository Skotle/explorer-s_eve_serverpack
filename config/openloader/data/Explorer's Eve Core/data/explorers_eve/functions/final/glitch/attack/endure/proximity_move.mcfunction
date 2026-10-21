#Move until it's just a little further away from a player.
spreadplayers ~ ~ 1 5 false @s
execute if entity @a[gamemode=!spectator,distance=..3] run function explorers_eve:final/glitch/attack/endure/proximity_move
