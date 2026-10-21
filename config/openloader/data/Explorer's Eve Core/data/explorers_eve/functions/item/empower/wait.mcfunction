#Mark the beacon.
execute unless entity @s[tag=Activated] run function explorers_eve:item/empower/activate

particle witherstormmod:command_block ~ ~ ~ 0.5 0.5 0.5 0.01 2
execute as @e[tag=BeaconUpgradeRing1] at @s run function explorers_eve:item/empower/particles_1
execute as @e[tag=BeaconUpgradeRing2] at @s run function explorers_eve:item/empower/particles_2

execute unless block ~ ~ ~ witherstormmod:super_beacon{ResummonItems:[]} if block ~ ~ ~ witherstormmod:super_beacon run function explorers_eve:item/empower/check

execute unless block ~ ~1 ~ air if block ~ ~ ~ witherstormmod:super_beacon run function explorers_eve:item/empower/end
execute unless block ~ ~ ~ witherstormmod:super_beacon run function explorers_eve:item/empower/end