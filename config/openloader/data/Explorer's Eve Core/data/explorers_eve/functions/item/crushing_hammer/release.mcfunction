#Launch nearby mobs!
tag @s add HammerUsed
execute as @e[type=!#explorers_eve:pull_immune,type=!player,distance=..5] at @s run function explorers_eve:item/crushing_hammer/launch
tag @s remove HammerUsed