#Triggered via advancement for optimization purposes, makes horses cooler.
advancement revoke @s only explorers_eve:ride_horse
execute on vehicle unless entity @s[tag=HorseBuffed] run function explorers_eve:world/horse_buff