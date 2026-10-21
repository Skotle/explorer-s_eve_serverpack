#Convert the mob.
witherstormmod convert @s toSickened
tag @e[type=#witherstormmod:sickened_mobs,limit=1,sort=nearest] add ApocalypseMob

#Just for fun, they also get bowels buffs.
execute as @e[tag=ApocalypseMob,limit=1,sort=nearest] at @s run function explorers_eve:command_block/mobs/main