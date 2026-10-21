#Clear the gravity effect, then randomize it again.
execute as @a[distance=..200] run attribute @s forge:entity_gravity modifier remove 133a154f-3428-16ab-b768-aa41ce8930d7

scoreboard players set @s RandomRange 4
function explorers_eve:random

execute if score @s RandomValue matches 0 as @a[distance=..64] run attribute @s forge:entity_gravity modifier add 133a154f-3428-16ab-b768-aa41ce8930d7 ValkyrieGravity -0.075 add
execute if score @s RandomValue matches 1 as @a[distance=..64] run attribute @s forge:entity_gravity modifier add 133a154f-3428-16ab-b768-aa41ce8930d7 ValkyrieGravity -0.07 add
execute if score @s RandomValue matches 2 as @a[distance=..64] run attribute @s forge:entity_gravity modifier add 133a154f-3428-16ab-b768-aa41ce8930d7 ValkyrieGravity -0.06 add
execute if score @s RandomValue matches 3 as @a[distance=..64] run attribute @s forge:entity_gravity modifier add 133a154f-3428-16ab-b768-aa41ce8930d7 ValkyrieGravity -0.03 add

execute if score @s RandomValue matches 0 run attribute @s forge:entity_gravity modifier add 133a154f-3428-16ab-b768-aa41ce8930d7 ValkyrieGravity -0.075 add
execute if score @s RandomValue matches 1 run attribute @s forge:entity_gravity modifier add 133a154f-3428-16ab-b768-aa41ce8930d7 ValkyrieGravity -0.07 add
execute if score @s RandomValue matches 2 run attribute @s forge:entity_gravity modifier add 133a154f-3428-16ab-b768-aa41ce8930d7 ValkyrieGravity -0.06 add
execute if score @s RandomValue matches 3 run attribute @s forge:entity_gravity modifier add 133a154f-3428-16ab-b768-aa41ce8930d7 ValkyrieGravity -0.03 add

playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 3 2

#Reset the timer.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s ValkyrieGravityTime = @s RandomValue
scoreboard players add @s ValkyrieGravityTime 160