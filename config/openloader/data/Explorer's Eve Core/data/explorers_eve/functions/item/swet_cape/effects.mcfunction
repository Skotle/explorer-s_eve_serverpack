#Negative effects. Bosses don't get stunned.
effect give @s[type=!#explorers_eve:bosses,type=!#minecraft:skeletons] cataclysm:stun 1 0
effect give @s[type=#minecraft:skeletons] minecraft:slowness 1 6
effect give @s[type=!#explorers_eve:bosses] minecraft:slowness 3 2
effect give @s[type=!#explorers_eve:bosses] minecraft:slowness 5 1
effect give @s minecraft:slowness 7 0

particle minecraft:item_slime ~ ~0.25 ~ 0.1 0.1 0.1 1 10
particle minecraft:splash ~ ~0.25 ~ 0.1 0.1 0.1 1 10
playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 1 1