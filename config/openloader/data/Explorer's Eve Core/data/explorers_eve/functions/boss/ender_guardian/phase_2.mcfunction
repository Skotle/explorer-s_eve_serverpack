#Phase transition!
tag @s remove Phase1
tag @s add Phase2
tag @s add FloorBreakWait

stopsound @a[distance=..64] record explorers_eve:ender_guardian_theme_1
stopsound @a[distance=..64] record explorers_eve:ender_guardian_theme_1_intro
scoreboard players set @a[tag=EnderGuardianMusic,distance=..64] MusicTime 0

effect give @s minecraft:resistance infinite 1 true