#Depending on the player's score, display a different message.
#Difficulty options.
execute if score @s Challenge matches 1 unless data storage world SilentStorm unless entity @w run function explorers_eve:world/challenge/silent_enable
execute if score @s Challenge matches 1 if data storage world SilentStorm run function explorers_eve:world/challenge/silent_disable
execute if score @s Challenge matches 2 unless data storage world DiggyDiggyHole unless entity @w run function explorers_eve:world/challenge/diggy_enable
execute if score @s Challenge matches 2 if data storage world DiggyDiggyHole run function explorers_eve:world/challenge/diggy_disable
execute if score @s Challenge matches 3 unless data storage world Incuritis unless entity @w run function explorers_eve:world/challenge/sickness_enable
execute if score @s Challenge matches 3 if data storage world Incuritis run function explorers_eve:world/challenge/sickness_disable
execute if score @s Challenge matches 4 unless data storage world DraconicTemperament unless entity @w run function explorers_eve:world/challenge/temper_enable
execute if score @s Challenge matches 4 if data storage world DraconicTemperament run function explorers_eve:world/challenge/temper_disable
execute if score @s Challenge matches 5 unless data storage world WitheringApocalypse unless entity @w run function explorers_eve:world/challenge/withering_enable
execute if score @s Challenge matches 5 if data storage world WitheringApocalypse run function explorers_eve:world/challenge/withering_disable

#Difficulty can't be increased with a living Wither Storm.
execute if score @s Challenge matches 1.. run function explorers_eve:world/challenge/fail

#Cute little noise.
execute if score @s Challenge matches -1 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.25 1
execute if score @s Challenge matches -2 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.5 1

#Reset the scoreboard.
scoreboard players reset @s Challenge
scoreboard players enable @s Challenge