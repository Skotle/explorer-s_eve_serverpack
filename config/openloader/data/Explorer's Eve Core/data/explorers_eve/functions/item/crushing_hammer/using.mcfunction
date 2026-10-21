#Keep ticking up a timer!
advancement revoke @s only explorers_eve:use_crushing_hammer
execute unless entity @s[tag=UsingHammer] run function explorers_eve:item/crushing_hammer/start
scoreboard players add @s HammerTime 1