#Phase transition.
tag @s remove Phase1
tag @s add Phase2
playsound cataclysm:flame_burst hostile @a ~ ~ ~ 3 2

attribute @s minecraft:generic.movement_speed modifier add 1d58604f-3438-41cb-b968-ad31de8430d7 BossStill -10 add
tp @s @e[tag=SunSpiritTracker,limit=1,sort=nearest]

stopsound @a[distance=..40] record explorers_eve:sun_spirit_theme_1
scoreboard players set @a[tag=SunSpiritMusic,distance=..40] MusicTime 0