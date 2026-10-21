#Activates when the player uses a 'Void Eye' from Cataclysm. First, clear that up.
kill @e[type=cataclysm:eye_of_dungeon,limit=1,sort=nearest]
scoreboard players reset @s TeratomaUsed
scoreboard players set @s Math 0

#Run checks, and based on that, either spawn or fail.
execute if entity @w[scores={StormPhase=..3}] run scoreboard players set @s Math 10
execute unless entity @w[distance=..128] if entity @w[distance=128..400] unless entity @w[distance=400..] run scoreboard players set @s Math 3
execute if entity @e[type=witherstormmod:formidibomb] run scoreboard players set @s Math 6
execute if entity @w[nbt=!{SymbiontSummoningCooldown:0,PlayDeadManager:{State:0}},distance=..128] run scoreboard players set @s Math 5
execute if entity @w[tag=Injured] run scoreboard players set @s Math 8
execute if entity @w[tag=BowelsReady,distance=..256] run scoreboard players set @s Math 8
execute if entity @w[tag=Phase6Chase,distance=..256] run scoreboard players set @s Math 5
execute if entity @w[scores={StormPhase=4..5},tag=!BombReady,distance=..128] run scoreboard players set @s Math 4
execute if entity @e[type=witherstormmod:withered_symbiont,distance=..500] run scoreboard players set @s Math 2
execute if entity @w[tag=FinalBoss] run scoreboard players set @s Math 7
execute if entity @w[tag=SymbiontSummoning,distance=..128] run scoreboard players set @s Math 1
execute unless entity @w[distance=1..] run scoreboard players set @s Math 9
execute if score @s Math matches 0 if entity @w[distance=..128] run function explorers_eve:item/teratoma/spawn_symbiont
execute if score @s Math matches 0 unless entity @w[distance=..400] run function explorers_eve:item/teratoma/begin_chase
execute unless score @s Math matches 0 run function explorers_eve:item/teratoma/fail
scoreboard players reset @s Math