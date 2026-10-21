#Convert the Spell NBT to a score so that fun things can happen. Reset the scoreboard just in case something goes wrong, then try and detect it.
scoreboard players set @s SymbiontSpell 0
execute if entity @s[nbt={Spell:"witherstormmod:empty"}] run scoreboard players set @s SymbiontSpell 0
execute if entity @s[nbt={Spell:"witherstormmod:evoker_fangs"}] run scoreboard players set @s SymbiontSpell 1
execute if entity @s[nbt={Spell:"witherstormmod:shulker_bullets"}] run scoreboard players set @s SymbiontSpell 2
execute if entity @s[nbt={Spell:"witherstormmod:arrows"}] run scoreboard players set @s SymbiontSpell 3
execute if entity @s[nbt={Spell:"witherstormmod:smash"}] run scoreboard players set @s SymbiontSpell 4
execute if entity @s[nbt={Spell:"witherstormmod:fire_balls"}] run scoreboard players set @s SymbiontSpell 5
execute if entity @s[nbt={Spell:"witherstormmod:wither_skulls"}] run scoreboard players set @s SymbiontSpell 6
execute if entity @s[nbt={Spell:"witherstormmod:pull"}] run scoreboard players set @s SymbiontSpell 7
execute if entity @s[nbt={Spell:"witherstormmod:bombing"}] run scoreboard players set @s SymbiontSpell 8
execute if entity @s[nbt={Spell:"witherstormmod:pulse"}] run scoreboard players set @s SymbiontSpell 9
execute if entity @s[nbt={Spell:"witherstormmod:throwing"}] run scoreboard players set @s SymbiontSpell 10

#The Symbiont is never allowed to use its 'pull' spell or skull attack.
execute if score @s SymbiontSpell matches 7 run data modify entity @s Spell set value "witherstormmod:smash"
execute if score @s SymbiontSpell matches 6 run data modify entity @s Spell set value "witherstormmod:evoker_fangs"
execute if score @s SymbiontSpell matches 6 run scoreboard players set @s SymbiontSpell 1

#In the bowels, it also cannot use arrows (too hard to dodge), bombing (too much terrain damage), or fireballs (in case it chooses skulls, which break everything).
execute if score @s SymbiontSpell matches 3 if dimension witherstormmod:bowels run data modify entity @s Spell set value "witherstormmod:shulker_bullets"
execute if score @s SymbiontSpell matches 8 if dimension witherstormmod:bowels run data modify entity @s Spell set value "witherstormmod:throwing"
execute if score @s SymbiontSpell matches 5 if dimension witherstormmod:bowels run data modify entity @s Spell set value "witherstormmod:smash"

#In the empowered fight, it cannot use arrows (too spammy with multiple) or pulse (chaos)
execute if score @s SymbiontSpell matches 3 if entity @s[tag=FinalBossMinion] run data modify entity @s Spell set value "witherstormmod:fire_balls"
execute if score @s SymbiontSpell matches 9 if entity @s[tag=FinalBossMinion] run data modify entity @s Spell set value "witherstormmod:bombing"

#Fangs cannot be spammed.
execute if score @s SymbiontSpell matches 1 if entity @e[type=minecraft:evoker_fangs,distance=..64] run data modify entity @s Spell set value "witherstormmod:throwing"
execute if score @s SymbiontSpell matches 1 unless entity @e[type=minecraft:evoker_fangs,distance=..64] run tag @s add FangWait

#Use spikes!
execute if entity @s[tag=WeaponActive] run function explorers_eve:symbiont/spike/start

#By the way, initialize the fight here.
execute unless entity @s[tag=SymbiontBattleStart] run function explorers_eve:symbiont/activate