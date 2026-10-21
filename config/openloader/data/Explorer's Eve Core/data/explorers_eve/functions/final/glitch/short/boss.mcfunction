#Start a short, then enhance it. This can add on to a random short, but multiple boss shorts can't intersect.
function explorers_eve:final/glitch/short/start
scoreboard players set @s RandomRange 2
function explorers_eve:random
scoreboard players operation @s GlitchHitsPossible += @s RandomValue
scoreboard players add @s GlitchHitsPossible 3
tag @s add BossShort