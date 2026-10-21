#End the beam sequence and emerge near the player.
tag @s remove WardenBarrage
scoreboard players reset @s WardenBarrageTime
kill @e[tag=WardenTarget,limit=1,sort=nearest]

data merge entity @s {Invulnerable:0b,Silent:0b,NoAI:0b}
function explorers_eve:final/command_block/warden/emerge_start
scoreboard players set @s WardenTeleportTime 300