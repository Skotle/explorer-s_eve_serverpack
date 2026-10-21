#Activates every time the player takes damage. Check if the cape is equipped, and if so, run effects.
advancement revoke @s only explorers_eve:use_venom_sac

execute as @e[type=!player,distance=..60,nbt={HurtTime:10s}] at @s run function explorers_eve:item/venom_sac/effects