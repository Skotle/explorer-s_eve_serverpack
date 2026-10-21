#The icicle takes time to fall.
scoreboard players add @s IceFallTime 1
execute if entity @s[scores={IceFallTime=3}] run function explorers_eve:boss/alpha_yeti/icicle_drop