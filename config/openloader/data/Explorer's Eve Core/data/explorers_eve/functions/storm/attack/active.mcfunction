#Tick up the scoreboard and activate attacks at the right time.
scoreboard players add @s StormAttackTime 1

execute if entity @s[scores={StormAttackTime=3..},tag=MultishotActive] run function explorers_eve:storm/attack/multi/pick
execute if entity @s[scores={StormAttackTime=2..},tag=CutoffActive] run function explorers_eve:storm/attack/cutoff/aim
execute if entity @s[scores={StormAttackTime=6..},tag=LineshotActive] run function explorers_eve:storm/attack/line/pick
execute if entity @s[scores={StormAttackTime=5..},tag=ScattershotActive] run function explorers_eve:storm/attack/scatter/pick
execute if entity @s[tag=QuakeActive] run function explorers_eve:storm/attack/quake/timer

execute if entity @s[scores={StormAttackTime=2..},tag=DigActive] run function explorers_eve:storm/attack/dig/active
execute if entity @s[scores={StormAttackTime=20..},tag=UprootActive] run function explorers_eve:storm/attack/uproot/active

execute if entity @s[tag=CutoffActive] as @e[tag=LinePullPossible,limit=1,distance=..200,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @e[tag=LinePullSource,limit=1,sort=nearest]

execute if entity @s[tag=!MultishotActive,tag=!CutoffActive,tag=!LineshotActive,tag=!ScattershotActive,tag=!QuakeActive,tag=!DigActive,tag=!UprootActive] run tag @s remove StormAttacking