#Change the glow color.
scoreboard players set @s RandomRange 16
function explorers_eve:random

execute if score @s RandomValue matches 0 run team modify GlitchColor color aqua
execute if score @s RandomValue matches 1 run team modify GlitchColor color black
execute if score @s RandomValue matches 2 run team modify GlitchColor color blue
execute if score @s RandomValue matches 3 run team modify GlitchColor color dark_aqua
execute if score @s RandomValue matches 4 run team modify GlitchColor color dark_blue
execute if score @s RandomValue matches 5 run team modify GlitchColor color dark_gray
execute if score @s RandomValue matches 6 run team modify GlitchColor color dark_green
execute if score @s RandomValue matches 7 run team modify GlitchColor color dark_purple
execute if score @s RandomValue matches 8 run team modify GlitchColor color dark_red
execute if score @s RandomValue matches 9 run team modify GlitchColor color gold
execute if score @s RandomValue matches 10 run team modify GlitchColor color gray
execute if score @s RandomValue matches 11 run team modify GlitchColor color green
execute if score @s RandomValue matches 12 run team modify GlitchColor color light_purple
execute if score @s RandomValue matches 13 run team modify GlitchColor color red
execute if score @s RandomValue matches 14 run team modify GlitchColor color white
execute if score @s RandomValue matches 15 run team modify GlitchColor color yellow

#Then reset the delay.
scoreboard players set @s GlitchColorTime 5
execute if score @s Health matches ..500 run scoreboard players remove @s GlitchColorTime 1
execute if score @s Health matches ..400 run scoreboard players remove @s GlitchColorTime 1
execute if score @s Health matches ..300 run scoreboard players remove @s GlitchColorTime 1
execute if score @s Health matches ..200 run scoreboard players remove @s GlitchColorTime 1