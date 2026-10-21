#Revoke the advancement and decide whether or not to make a new mark.
advancement revoke @s only explorers_eve:enter_nether
execute unless entity @s[gamemode=spectator] run function explorers_eve:world/nether_portal_mark_set