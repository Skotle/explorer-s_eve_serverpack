#Runs once for every player. Gives loot, enables mode switching, then disables modes if the other one is active.
execute unless entity @s[tag=Reloaded] run function explorers_eve:load/player_full
tag @s remove Reloaded
scoreboard players enable @s Reload
scoreboard players enable @s Challenge
scoreboard players set @a StormAttackWait 1000000000
execute unless score @s ZetaCharges matches 0.. run scoreboard players set @s ZetaCharges 0
advancement grant @s from blue_skies:progression/root
execute if data storage world WitherStormSpawned run advancement grant @s only witherstormmod:main/root
execute unless data storage world Loaded run tellraw @s [{"text":"ERROR: Couldn't verify world initiation status. Make sure that functions are fully enabled and run /reload, or restart the world.","color":"red"}]
execute if data storage world Loaded unless data storage world WitherStormSpawned run tellraw @s [{"text":"Welcome to Explorer's Eve! Take stock of yourself, and summon the Wither Storm when you're ready!","color":"gray"}]
execute if data storage world Loaded if data storage world WitherStormSpawned run tellraw @s [{"text":"Welcome to Explorer's Eve!","color":"gray"}]
execute if data storage world Loaded run tag @s add Loaded
tag @s[advancements={explorers_eve:left_twilight=false}] add TwilightStuck