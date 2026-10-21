#Whether the Symbiont dies or despawns, these effects happen.
kill @e[type=witherstormmod:flaming_wither_skull,distance=..300]
kill @e[tag=SymbiontTentacle,distance=..200]
kill @e[type=#witherstormmod:sickened_mobs,distance=..32]
execute as @w if entity @s[tag=SymbiontHelp] run tag @s remove SymbiontHelp
execute as @w if entity @s[tag=SymbiontMoving] run function explorers_eve:storm/symbiont_move_end
execute if entity @a[gamemode=!spectator,distance=..80] run function explorers_eve:symbiont/death
kill @s

#Get rid of projectiles that get stuck sometimes.
kill @e[type=arrow,distance=..300]
kill @e[type=fireball,distance=..300]
kill @e[type=small_fireball,distance=..300]
kill @e[type=dragon_fireball,distance=..300]