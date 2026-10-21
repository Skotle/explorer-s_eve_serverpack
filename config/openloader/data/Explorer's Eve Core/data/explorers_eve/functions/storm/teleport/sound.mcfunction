#Reset the sound timer. Based on how close the Storm is to teleporting, bias the timer.
scoreboard players set @s RandomRange 6
scoreboard players remove @s[scores={StormTeleportTime=..15}] RandomRange 3
function explorers_eve:random
scoreboard players operation @s StormTeleportSound = @s RandomValue
scoreboard players add @s StormTeleportSound 1
scoreboard players add @s[scores={StormTeleportTime=35..}] StormTeleportSound 5
scoreboard players add @s[scores={StormTeleportTime=15..}] StormTeleportSound 4

#Oh, and play a noise at random.
scoreboard players set @s RandomRange 2
function explorers_eve:random
execute if score @s StormTeleportTime matches 60 run scoreboard players set @s RandomValue 1
execute if score @s RandomValue matches 0 run playsound witherstormmod:bowels_mood hostile @a[distance=1..] ~ ~ ~ 1 1 1
execute if score @s RandomValue matches 1 run witherstormmod screenShake @a[distance=1..] 30t 1
execute if score @s RandomValue matches 1 run playsound witherstormmod:bowels_tremble hostile @a[distance=1..] ~ ~ ~ 1 1 0.5