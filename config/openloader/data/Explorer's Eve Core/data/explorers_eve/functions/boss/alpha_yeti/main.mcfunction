#Main manager for Alpha Yeti changes.
execute unless entity @s[tag=Activated] run function explorers_eve:boss/alpha_yeti/activate

#Thrown ice summons ice crystals.
execute unless entity @s[tag=FinalBattle] as @e[type=twilightforest:thrown_ice,tag=!SummonedCrystal,distance=8..40] at @s run function explorers_eve:boss/alpha_yeti/spawn_ice_crystal

#Falling ice is replaced to be more fair.
execute unless entity @s[tag=FinalBattle] as @e[type=twilightforest:falling_ice,distance=..128] at @s run function explorers_eve:boss/alpha_yeti/icicle_timer

#In the rematch, thrown ice duplicates.
execute if entity @s[tag=FinalBattle] as @e[type=twilightforest:thrown_ice,tag=!Grounded,distance=..128] at @s run function explorers_eve:boss/alpha_yeti/ice_duplicate