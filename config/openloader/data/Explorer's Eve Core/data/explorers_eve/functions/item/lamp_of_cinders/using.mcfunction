#Keep ticking up a timer!
advancement revoke @s only explorers_eve:use_lamp_of_cinders
execute unless entity @s[tag=UsingLamp] run function explorers_eve:item/lamp_of_cinders/start
scoreboard players add @s LampTime 1

#When empowered, summon rings of fire! DEBUG, not currently allowing multiple rings to spawn, but it's easy to enable and works as expected.
execute if score @s LampTime matches 35 if predicate explorers_eve:empowered_lamp_of_cinders run function explorers_eve:item/lamp_of_cinders/empower
#scoreboard players add @s[tag=LampEmpowered] EmpoweredLampTime 1
#execute if score @s EmpoweredLampTime matches 25.. run function explorers_eve:item/lamp_of_cinders/spawn_fire_ring

#Rings of fire are very spinny!
execute if entity @s[tag=LampEmpowered] as @e[tag=LampRotate,distance=..32] at @s facing entity @p[tag=LampEmpowered] eyes rotated ~90 0 run function explorers_eve:item/lamp_of_cinders/fireball_rotate