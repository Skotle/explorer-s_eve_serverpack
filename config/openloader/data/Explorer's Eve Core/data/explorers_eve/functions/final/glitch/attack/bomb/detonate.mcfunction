#Explode!
tag @s remove GlitchAttacking
tag @s remove BombActive
tag @s remove ShortImmune

effect give @e[tag=FinalBattle,distance=..64] resistance 1 10 true
playsound witherstormmod:formidibomb_explosion_quiet hostile @a[distance=..200] ~ ~ ~ 5 1 1

execute at @e[tag=GlitchBomb,limit=1,sort=nearest] run summon witherstormmod:super_tnt ~ ~ ~ {Tags:["DistractionChecked"],Fuse:1,NoGravity:1b}
execute at @e[tag=GlitchBomb,limit=1,sort=nearest] as @a[distance=..40,gamemode=!spectator] run damage @s 60 witherstormmod:formidibomb
kill @e[tag=GlitchBomb]

execute at @s run function explorers_eve:final/glitch/short/start
#scoreboard players set @s GlitchShortTime 100

execute as @e[tag=CommandRide,limit=1,sort=nearest] run function explorers_eve:final/glitch/attack/bomb/launch