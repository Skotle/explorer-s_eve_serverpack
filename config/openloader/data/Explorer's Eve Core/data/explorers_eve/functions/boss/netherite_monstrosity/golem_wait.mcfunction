#Make particles and examine the status of the golem.
particle dust 1 0 1 1 ~ ~ ~ 0.3 0.3 0.3 1 3
execute as @a[gamemode=!spectator,distance=..32] at @s run function explorers_eve:world/mining_fatigue
execute if entity @a[distance=..8] unless entity @s[tag=DisplayActive] run function explorers_eve:boss/netherite_monstrosity/golem_display_start
execute if entity @s[tag=DisplayActive] unless entity @a[distance=..8] run function explorers_eve:boss/netherite_monstrosity/golem_display_end
execute if block ~ ~ ~ witherstormmod:tainted_dust_block run function explorers_eve:boss/netherite_monstrosity/golem_check