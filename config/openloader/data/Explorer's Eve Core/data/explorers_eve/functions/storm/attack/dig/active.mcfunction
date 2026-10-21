#Keep the source aimed right and shoot a skull.
scoreboard players set @s StormAttackTime 0
tp @e[tag=DigSkullSource,limit=1,sort=nearest,distance=..64] ^ ^15 ^ facing entity @e[tag=DigSkullTarget,limit=1,sort=nearest] eyes
execute unless entity @e[tag=DigParticleSource] as @e[tag=DigSkullSource,limit=1,sort=nearest,distance=..64] at @s facing entity @e[tag=DigSkullTarget,limit=1,sort=nearest] eyes run function explorers_eve:storm/attack/dig/shoot

execute unless entity @e[tag=DigSkullSource,distance=..64] run function explorers_eve:storm/attack/dig/end