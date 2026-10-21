#End the waiting sequence.
execute anchored eyes facing entity @e[tag=WardenTarget,limit=1,sort=nearest] eyes run function explorers_eve:final/command_block/warden/beam_shoot
kill @e[tag=WardenTarget,limit=1,sort=nearest]
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..128] ~ ~ ~ 10 1 1
tag @a[tag=BeamHit] remove BeamHit
scoreboard players reset @s WardenBeamTime
tag @s remove WardenBeam
scoreboard players remove @s WardenBeamCount 1
execute unless score @s WardenBeamCount matches ..0 run function explorers_eve:final/command_block/warden/teleport
execute if score @s WardenBeamCount matches ..0 run function explorers_eve:final/command_block/warden/barrage_end