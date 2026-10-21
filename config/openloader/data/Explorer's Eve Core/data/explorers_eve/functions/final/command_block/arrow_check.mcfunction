#Is the arrow nearby a player? If not, make chaos.
tag @s add ArrowChecked
execute unless entity @e[type=player,distance=..3] run data merge entity @s {ForgeCaps:{"aether:phoenix_arrow":{PhoenixArrow:1b,FireTime:4}},damage:6,crit:1b}