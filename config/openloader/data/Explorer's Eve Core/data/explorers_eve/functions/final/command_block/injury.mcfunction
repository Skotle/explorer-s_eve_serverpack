#The block's hurt? Then progress the fight.
kill @e[tag=CommandRide]
execute if entity @s[tag=Phase4] run function explorers_eve:final/command_block/phase_5
execute if entity @s[tag=Phase3] run function explorers_eve:final/command_block/phase_4
execute if entity @s[tag=Phase2] run function explorers_eve:final/command_block/phase_3
execute if entity @s[tag=Phase1] run function explorers_eve:final/command_block/phase_2
execute if entity @s[tag=CommandRematchIdle] run function explorers_eve:final/command_block/activate

execute as @e[tag=BarrierSource,distance=..1] run data modify entity @s PortalCooldown set value 1000000
execute as @e[tag=BarrierSource,distance=..1] at @s run function explorers_eve:final/command_block/launch_entity

#Unbreakable, undroppable Leather Boots with Blast Protection to severely limit cheese via explosions or Powder Snow.
execute as @e[tag=BarrierSource,distance=..1] run item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:10s},{id:"minecraft:feather_falling",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1495567986,1046236924,-1827436314,1327856578],Slot:"feet"}]} 1
execute as @e[tag=BarrierSource,distance=..1] run data modify entity @s ArmorDropChances set value [0f,0f,0f,0f]

function explorers_eve:final/give_experience

fill ~4 ~16 ~4 ~-4 ~ ~-4 air destroy
execute as @e[type=#witherstormmod:sickened_mobs,distance=..80] run damage @s 20 minecraft:out_of_world by @p[gamemode=!spectator]

data modify entity @s State set value 0
data modify entity @s BossfightManager.CurrentPhase set value 5
data modify entity @e[tag=CommandRide,limit=1,sort=nearest] Motion[1] set value 1d
data modify entity @s Glowing set value 0b
team join NoInfighting @e[tag=CommandRide]

execute store result score @s HealthLimit run data get entity @s Health
scoreboard players add @s HealthLimit 50
execute store result entity @s Health float 1 run scoreboard players get @s HealthLimit
stopsound @a[distance=..128] * witherstormmod:loud_tremble
stopsound @a[distance=..128] * witherstormmod:bowels_loud_hurt

scoreboard players set @a[tag=EmpowerMusic] MusicTime 1

scoreboard players set @s[scores={CommandSkullWait=..50}] CommandSkullWait 50

scoreboard players set @s CommandEntityTime 3
execute if score @s CommandEntityCount matches 1.. run tag @s add SpawningMobs
tag @s add BarrierActive
function explorers_eve:final/command_block/barrier/particle_mobs