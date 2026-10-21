#Hurt the player twice per second.
damage @s 3 minecraft:indirect_magic
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 1.5
scoreboard players set @s ValkyrieColumnDelay 10