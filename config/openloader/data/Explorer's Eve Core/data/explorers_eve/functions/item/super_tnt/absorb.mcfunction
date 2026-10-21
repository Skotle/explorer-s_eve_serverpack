#Super TNT gets absorbed by the Wither Storm under certain circumstances.
execute if entity @s[type=witherstormmod:super_tnt] run setblock ~ ~ ~ witherstormmod:super_tnt
execute if entity @s[type=witherstormmod:formidibomb] run setblock ~ ~ ~ witherstormmod:formidibomb
witherstormmod cluster create ~ ~ ~ ~ ~ ~ 0 {RotationDelta:{x:4,y:4},ShakeTime:20,NoGravity:1b} @w
kill @e[tag=SuperTNTTracker,distance=..2,limit=1,sort=nearest]
kill @s

#Make angry Storm noises.
playsound witherstormmod:bowels_loud_hurt hostile @a[distance=..200] ~ ~ ~ 1 1.5 1