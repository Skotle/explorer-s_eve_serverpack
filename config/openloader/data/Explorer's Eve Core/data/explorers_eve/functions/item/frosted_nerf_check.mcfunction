#Activates every time the player uses the Ice Bow or Ice Sword to deal damage.
advancement revoke @s only explorers_eve:use_ice_weapon

#This must be delayed by one tick, unfortunately.
schedule function explorers_eve:item/frosted_nerf_effects 1t