#Activates every time the player uses the Eye of the Storm to deal damage.
advancement revoke @s only explorers_eve:use_eye_of_the_storm

execute unless entity @s[tag=StormEyeCooldown] run function explorers_eve:item/eye_of_the_storm/start