#Wait for the short to end, and until then, spark.
particle end_rod ~ ~ ~ 0.35 0.35 0.35 0.3 1 force
scoreboard players remove @s GlitchShortTime 1
execute if score @s GlitchShortTime matches ..0 unless entity @a[gamemode=!spectator,distance=..5] run function explorers_eve:final/glitch/short/end

#Forcefully remove Aersmog because of bugs.
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace deep_aether:aersmog