#No need to spam this.
execute as @e[tag=UprootPullSource] at @s facing entity @e[tag=UprootPullTarget,limit=1,sort=nearest] eyes positioned ^ ^ ^0.25 run function explorers_eve:storm/attack/uproot/particle
execute if entity @e[tag=UprootPullTarget] run schedule function explorers_eve:storm/attack/uproot/particle_timer 5t