#Activates whenever the player slays a mob via melee. If the cape's equipped, proceed.
advancement revoke @s only explorers_eve:slain_mob

execute if entity @s[curios={item:{id:"lost_aether_content:phoenix_cape"}}] positioned ^ ^1 ^3.5 run function explorers_eve:item/phoenix_cape/eruption
execute if entity @s[curios={item:{id:"lost_aether_content:phoenix_cape",tag:{Unbreakable:1b,HideFlags:4,display:{Lore:['{"italic":false,"color":"gray","text":"Causes eruptions that melt armor when creatures are slain with melee."}','{"italic":false,"color":"gray","text":"Also levitates the wearer if at risk of falling into the void."}','{"color":"gold","text":"Explorer\'s Treasure"}']}}}}] positioned ^ ^1 ^3.5 run function explorers_eve:item/phoenix_cape/eruption