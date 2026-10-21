#Extra effects for the reflectable bombs the hydra throws.
scoreboard players add @s HydraFire 1
execute if entity @s[scores={HydraFire=2..}] run summon minecraft:small_fireball ~ ~1 ~ {power:[0d,-0.25d,0d]}
execute if entity @s[scores={HydraFire=2..}] run scoreboard players set @s HydraFire 0