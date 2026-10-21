#Run whatever fits for the health it's now at. First, update the health limit.
scoreboard players operation @s HealthLimit = @s Health

#Clear ice, make a delay, spawn minions, and teleport.
scoreboard players set @s SunSpiritIceTime 200
kill @e[tag=IceCrystalSpread]
function explorers_eve:boss/sun_spirit/minion_group
function explorers_eve:boss/sun_spirit/teleport