#Mark the Super TNT and wait for detonation.
witherstormmod ultimateTarget clear @w[tag=FormidibombAngry] pos
tag @w[tag=FormidibombAngry,distance=..400] remove FormidibombAngry
summon witherstormmod:super_tnt ~ ~ ~ {Tags:["DistractionChecked"]}
execute if entity @w[tag=!FinalBoss,tag=!Resummoned,tag=!Phase6Chase,distance=..400] unless entity @e[type=witherstormmod:withered_symbiont,tag=RushMode,distance=..500] run summon marker ~ ~ ~ {Tags:["SuperTNTTracker"]}
kill @e[tag=DigSkullSource,limit=1,sort=nearest]
kill @s