#IT'S HAPPENING, STAY CALM
playsound witherstormmod:command_block_activates block @a ~ ~ ~ 5 1.5
playsound witherstormmod:command_block_summon block @a ~ ~ ~ 5 1.5
playsound witherstormmod:command_block_power_down block @a ~ ~ ~ 5 1
data modify block ~ ~ ~ Resummoning set value 1b
data modify block ~ ~ ~ ResummoningEntity set value "witherstormmod:wither_storm"
playsound explorers_eve:empower_theme_summon record @a[distance=..250] ~ ~ ~ 100 1 1
stopsound @a[distance=..250] music
execute positioned ~ ~1 ~ run function explorers_eve:final/summon/particle_circle_full
scoreboard players reset @s Math
tag @s add WitheredBeaconActive
tag @s remove FinalBossSummonMark
tp @s ~ ~ ~

#DEBUG, enable to skip phases. 1 skips the Command Block fight. 2 skips past the Wither rematch. 3 skips past the Symbionts. 4 skips directly to the final phase.
#data modify storage world FinalBossCheckpoint1 set value 1
#data modify storage world FinalBossCheckpoint2 set value 1
#data modify storage world FinalBossCheckpoint3 set value 1
#data modify storage world FinalBossCheckpoint4 set value 1