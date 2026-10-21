#Triggered via command to make reloading easy.
data remove storage world Loaded
tag @s remove Loaded
tag @s add Reloaded
scoreboard players reset @s Reload
function explorers_eve:load