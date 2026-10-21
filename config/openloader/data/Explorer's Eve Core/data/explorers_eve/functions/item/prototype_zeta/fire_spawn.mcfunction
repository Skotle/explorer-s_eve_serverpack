#Summon fire.
summon small_fireball ~ ~1 ~ {Tags:["FireballLaunch"],Motion:[0d,1d,0d],power:[0d,-0.06d,0d]}
scoreboard players remove @s Math 1
execute if score @s Math matches 1.. run function explorers_eve:item/prototype_zeta/fire_spawn