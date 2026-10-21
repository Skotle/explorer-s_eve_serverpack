#No skulls, so the player won't immediately die to the beam!
kill @e[type=wither_skull,distance=..16]
kill @e[type=witherstormmod:flaming_wither_skull,distance=..16]
stopsound @a[distance=..32] hostile minecraft:entity.wither.shoot
stopsound @a[distance=..32] hostile witherstormmod:wither_storm_shoot