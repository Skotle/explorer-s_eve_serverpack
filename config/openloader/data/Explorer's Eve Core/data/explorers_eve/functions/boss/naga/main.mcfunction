#Main manager for Naga changes.
execute unless entity @s[tag=Activated] run function explorers_eve:boss/naga/activate

#Keep track of its health.
execute store result score @s Health run data get entity @s Health
execute if entity @s[tag=Split] if score @s Health > @s HealthLimit store result entity @s Health float 1 run scoreboard players get @s HealthLimit
execute if score @s Health matches 0 as @p[gamemode=!spectator,distance=..40] run kill @e[type=twilightforest:naga,limit=1,sort=nearest,distance=..1]

#At (a little above) half health, split.
execute unless entity @s[tag=Split] if score @s Health <= @s HealthLimit run function explorers_eve:boss/naga/split

#Once split, count how many Nagas are nearby.
execute if entity @s[tag=NoLoot] run function explorers_eve:boss/naga/loot_check

#Hint if the player takes too long to stun it.
execute unless entity @s[tag=Split] if entity @a[gamemode=!spectator,distance=..32] unless entity @s[tag=FinalBattle] run function explorers_eve:boss/naga/hint