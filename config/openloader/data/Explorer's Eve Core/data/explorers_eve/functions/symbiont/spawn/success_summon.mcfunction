#Pick a random spot and spawn it.
summon marker ~ ~ ~ {Tags:["SymbiontSpawnMark"]}
spreadplayers ~ ~ 4 32 false @e[tag=SymbiontSpawnMark]
execute at @e[tag=SymbiontSpawnMark,limit=1,sort=nearest] run summon witherstormmod:withered_symbiont ~ ~ ~
playsound witherstormmod:withered_symbiont_spawn hostile @a[distance=..200] ~ ~ ~ 1 1 1
advancement grant @a[distance=..256] only witherstormmod:main/harbinger_of_cataclysmic_fates
kill @e[tag=SymbiontSpawnMark,limit=1,sort=nearest]
tag @s remove SymbiontSummoning