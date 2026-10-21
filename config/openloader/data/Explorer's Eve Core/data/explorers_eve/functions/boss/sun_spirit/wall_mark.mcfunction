#Spawn a marker and move forward.
tp @s ~ ~ ~
particle flame ~ ~ ~ 0.25 2 0.25 0.01 25
summon marker ~ ~ ~ {Tags:["FireCrystalDelayed"]}
execute if score @s Math matches 10.. run kill @s