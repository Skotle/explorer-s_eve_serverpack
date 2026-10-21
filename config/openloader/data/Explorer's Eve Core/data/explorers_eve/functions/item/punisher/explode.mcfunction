#This is the super-cool fishing rod from the End. It's a reference to Ragecraft III, by Heliceo.
execute unless entity @s[tag=Empowered] run summon dungeons_plus:soul_fireball ~ ~ ~ {fuse:0,knockback:3,has_flame:1b,Motion:[0d,-1d,0d]}
execute if entity @s[tag=Empowered] run summon dungeons_plus:soul_fireball ~ ~ ~ {fuse:0,power:2b,knockback:3,has_flame:1b,Motion:[0d,-1d,0d]}
execute if predicate explorers_eve:structure/blue_skies_dungeon run data modify entity @e[type=dungeons_plus:soul_fireball,limit=1,sort=nearest] has_flame set value 0b
kill @s