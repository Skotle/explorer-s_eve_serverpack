#There's only a chance the mob transforms.
scoreboard players set @s RandomRange 100
function explorers_eve:random

execute if score @s RandomValue matches ..1 run function explorers_eve:world/blue_skies/enderman_replace