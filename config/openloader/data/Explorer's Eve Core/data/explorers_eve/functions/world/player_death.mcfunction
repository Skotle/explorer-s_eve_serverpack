#Tag the player so that everything will update right.
tag @s remove IgnisBattling
tag @s remove FinalBossTarget
tag @s remove InBeam
tag @s remove GlitchGrabbed
scoreboard players reset @s Deaths

#For a little while, the Wither Storm won't target this player.
tag @s add RecentDeath
scoreboard players set @s DeathMercy 0

#This fixes a brick crash.
kill @e[type=twilightforest:chain_block]

#If no other players are living near the Wither Storm, have some mercy.
execute as @w[tag=!FinalBoss,scores={StormPhase=4..}] at @s unless entity @s[nbt={UltimateTargetDistraction:{IsDistracted:1b}}] unless entity @a[gamemode=!spectator,tag=!RecentDeath,distance=..1000] run tag @s add StormMercyWait

#Upon dying in the bowels without a spawn point, move the corpse.
execute if dimension witherstormmod:bowels run tag @s add BowelsDeath
execute if dimension witherstormmod:bowels run tag @e[type=corpse:corpse,limit=1,sort=nearest,distance=..3] add BowelsCorpse
execute if dimension witherstormmod:bowels run tp @e[tag=BowelsCorpse] 0 150 0

#Extra functionality for the true final battle.
execute if entity @s[tag=FinalBattling] run function explorers_eve:final/player/death