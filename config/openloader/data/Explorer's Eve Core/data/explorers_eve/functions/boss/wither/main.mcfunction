#Main manager for Wither changes. First, initialize.
execute unless entity @s[tag=Activated] run function explorers_eve:boss/wither/activate

#Keep track of its health. Don't let it heal during extra invul periods.
execute unless entity @s[tag=WitherInvul] store result score @s Health run data get entity @s Health
execute if entity @s[tag=Phase2,scores={Health=151..}] run scoreboard players set @s Health 150
execute if entity @s[tag=Phase2,scores={Health=150}] store result entity @s Health float 1 run scoreboard players get @s Health
execute if entity @s[tag=WitherInvul] store result entity @s Health float 1 run scoreboard players get @s Health
execute if entity @s[tag=WitherInvul] if entity @s[nbt={Invul:0}] run tag @s remove WitherInvul

#If it needs to hold still, force it to.
execute as @e[tag=WitherHold,limit=1,distance=..20,sort=nearest] at @s if block ~ ~ ~ air if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @e[tag=WitherHold,limit=1,distance=..20,sort=nearest] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]

#If the player is withered, change that.
execute as @a[predicate=explorers_eve:wither_2,distance=..80] run function explorers_eve:boss/wither/wither_effect

#The Wither can never be trapped.
execute if block ~ ~2 ~ #minecraft:wither_immune run tp @s ~ ~-2 ~

#If the Wither is being held still after exploding, it'll shoot.
execute if entity @s[tag=!WitherInvul,tag=!WitherCharging] if entity @e[tag=WitherHold,distance=..20] run scoreboard players remove @s WitherShoot 1
execute if entity @s[scores={WitherShoot=..0}] run function explorers_eve:boss/wither/shoot

#Every now and then, go invulnerable again.
scoreboard players remove @s[tag=!WitherInvul,tag=!WitherCharging,scores={Health=..225}] WitherInvul 1
execute if entity @s[scores={WitherInvul=..0}] if entity @a[gamemode=!spectator,distance=..8] run function explorers_eve:boss/wither/invul

#Below half health, phase transition.
execute unless entity @s[tag=Phase2] if entity @s[scores={Health=..150},tag=!WitherInvul] run function explorers_eve:boss/wither/phase_2

#Every now and then, charge at the player and smash everything.
scoreboard players remove @s[tag=!WitherInvul,tag=!WitherCharging,scores={Health=..100}] WitherCharge 1
execute if entity @s[tag=!WitherInvul,tag=!WitherCharging,scores={WitherCharge=..0}] run function explorers_eve:boss/wither/charge_start

#Manage the charge effects.
execute if entity @s[tag=WitherCharging] facing entity @e[tag=WitherChargeEnd,limit=1,sort=nearest] eyes rotated ~ 0 anchored eyes run function explorers_eve:boss/wither/charge_timer