#Tag to signal that this corpse is in the End.
tag @s add EndCorpse

#Keep shuffling the corpse until it's on solid ground.
tellraw @a[scores={Deaths=1..}] [{"text":"The pull of the void moves your corpse somewhere on the central End island...","color":"gray"}]
function explorers_eve:world/end_corpse_move