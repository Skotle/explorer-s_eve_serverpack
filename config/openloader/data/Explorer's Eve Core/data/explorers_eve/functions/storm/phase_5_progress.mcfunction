#Forces the Wither Storm to evolve and tags it. Triggered by picking up Super TNT. Also fixes the config to prevent Symbiont spawns.
scoreboard players reset @s[tag=!Resummoned] EvolutionTime
tag @s add SymbiontReady
witherstormmod phase set @s 5.5
tag @a[tag=ProgressMusic] remove MusicPlaying
execute as @a[tag=!MusicPlaying] at @s run function explorers_eve:music/progress/super_tnt

witherstormmod config server set server.withered_symbiont.canSummonSymbiont false