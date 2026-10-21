#Warn the player about what they just tried to do.
advancement revoke @s only explorers_eve:banned_item
tellraw @s {"text":"This item is disabled in Explorer's Eve!","color":"red"}
playsound aether:entity.zephyr.shoot player @s ~ ~ ~ 0.4 2
schedule function explorers_eve:world/banned_item_clear 1t