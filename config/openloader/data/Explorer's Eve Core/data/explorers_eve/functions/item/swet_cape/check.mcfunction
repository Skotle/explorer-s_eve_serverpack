#Activates every time the player takes damage. Check if the cape is equipped, and if so, run effects.
advancement revoke @s only explorers_eve:damage_taken

execute if entity @s[curios={item:{id:"aether:swet_cape"}}] on attacker at @s unless entity @s[type=player] run function explorers_eve:item/swet_cape/effects
execute if entity @s[curios={item:{id:"aether:swet_cape",tag:{Unbreakable:1b,HideFlags:4,display:{Lore:['{"italic":false,"color":"gray","text":"Slimes entities that attack the wearer."}','{"italic":false,"color":"gray","text":"Also allows the wearer to ride Swets."}','{"color":"gold","text":"Explorer\'s Treasure"}']}}}}] on attacker at @s unless entity @s[type=player] run function explorers_eve:item/swet_cape/effects