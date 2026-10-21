#Main manager for Lich rematch changes.
#Potions!
scoreboard players remove @s LichTime 1
execute if entity @s[scores={LichTime=..-1}] run function explorers_eve:final/command_block/lich/potion_spawn