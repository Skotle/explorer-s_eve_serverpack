#Launch explosions towards the player!
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["FormidibladeMark"]}
tp @e[tag=FormidibladeMark,limit=1,sort=nearest] ^ ^ ^2 ~ 0
function explorers_eve:symbiont/blade/warn