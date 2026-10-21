#Clean everything back up.
tag @s remove FinalBossAttacking
tag @s remove LightningActive

execute as @e[tag=LightningMark] at @s positioned ~ ~ ~ run function explorers_eve:final/attack/lightning/strike
kill @e[tag=LightningMark]