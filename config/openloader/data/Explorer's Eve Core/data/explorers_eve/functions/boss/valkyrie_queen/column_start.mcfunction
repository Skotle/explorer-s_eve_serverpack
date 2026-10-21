#Prepare the lightning column attack by placing marks on the player's location.
execute on target at @s align xyz positioned ~ ~0.5 ~ run function explorers_eve:boss/valkyrie_queen/column_place

#Effects.
playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 2 1

#Reset the timer.
scoreboard players set @s RandomRange 375
function explorers_eve:random
scoreboard players operation @s ValkyrieColumnTime = @s RandomValue
scoreboard players add @s ValkyrieColumnTime 750