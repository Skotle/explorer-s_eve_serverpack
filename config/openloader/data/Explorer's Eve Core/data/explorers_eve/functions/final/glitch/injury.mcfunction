#Cancel attacking.
execute unless entity @s[tag=ShortCircuit] run function explorers_eve:final/glitch/attack/cancel

#The block leaves.
execute unless entity @s[tag=ShortCircuit] run data modify entity @e[tag=CommandRide,limit=1,sort=nearest] Motion[1] set value 1d
fill ~3 ~16 ~3 ~-3 ~ ~-3 air destroy

#Lower its health and make effects.
tag @s add GlitchHurt
scoreboard players remove @s HealthLimit 15
scoreboard players operation @s Health = @s HealthLimit
execute store result entity @s Health float 1 run scoreboard players get @s HealthLimit
stopsound @a[distance=..128] * witherstormmod:loud_tremble
stopsound @a[distance=..128] * witherstormmod:bowels_loud_hurt
stopsound @a[distance=..128] * witherstormmod:wither_storm_reactivates

#Make sparks that fly around.
summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["SparkBat"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:3}]}
execute if score @s Health matches ..500 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["SparkBat"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:4}]}
execute if score @s Health matches ..400 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["SparkBat"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:5}]}
execute if score @s Health matches ..300 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["SparkBat"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:6}]}
execute if score @s Health matches ..200 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["SparkBat"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:7}]}
scoreboard players set @e[tag=SparkBat,distance=..1] GlitchSparkTime 10
scoreboard players add @e[tag=SparkBat,distance=..1,limit=3,sort=random] GlitchSparkTime 10

#And give experience!
execute positioned ~ ~1 ~ run function explorers_eve:final/give_experience

#Bosses get severely hurt by this.
execute as @e[tag=FinalBattle] run function explorers_eve:final/glitch/boss/damage

#At certain HP thresholds, cut it short.
execute if score @s Health matches ..199 unless entity @s[tag=Tier4Prep] run scoreboard players set @s GlitchHitsPossible -10

#If this is the real final hit, end it.
execute if score @s Health matches ..151 unless entity @s[tag=Despawning] run function explorers_eve:final/glitch/endure_start

#Test for circuit hit count.
scoreboard players remove @s GlitchHitsPossible 1
execute if score @s GlitchHitsPossible matches ..0 run function explorers_eve:final/glitch/short/end