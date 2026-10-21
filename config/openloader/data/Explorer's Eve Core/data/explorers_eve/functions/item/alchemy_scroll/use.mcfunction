#Activates via statistic! Nice. Apply effects to the spikes.
execute as @e[type=blue_skies:decaying_spike,distance=..16,tag=!AlchemySpike] at @s positioned ~ ~0.5 ~ run function explorers_eve:item/alchemy_scroll/spike
scoreboard players reset @s AlchemyScrollUsed