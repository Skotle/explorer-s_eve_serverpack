#Replace the beacon and make a marker.
setblock ~ ~ ~ glass replace
particle block minecraft:beacon ~ ~ ~ 0.3 0.3 0.3 0.01 100
particle cataclysm:lightning ~ ~ ~ 0 0 0 0.2 20
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 1

summon area_effect_cloud ~ ~ ~ {Tags:["HarbingerSummonMark"],Duration:600}

#And use up the beacon!
clear @a[advancements={explorers_eve:summon_harbinger=true}] cataclysm:mech_eye 1

#MUSIC YES I LOVE THIS
execute as @a[distance=..40,tag=!MusicPlaying,tag=!NullMusic] run function explorers_eve:music/harbinger/mark