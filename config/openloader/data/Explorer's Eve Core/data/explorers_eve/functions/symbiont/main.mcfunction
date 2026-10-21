#Manager for Symbiont battle effects. First, get what stage it's in and what spell it's using.
execute store result score @s SymbiontStage run data get entity @s Stage
execute store result score @s Health run data get entity @s Health

#Until the battle starts, the Symbiont is indicated with particles.
execute unless entity @s[tag=SymbiontBattleStart] run team join SymbiontColor @s
execute unless entity @s[tag=SymbiontBattleStart] run effect give @s glowing 1 0 true

#If the Symbiont somehow takes damage before spotting a threat, force initialize the fight.
execute unless entity @s[tag=SymbiontBattleStart] unless score @s Health matches 60 run function explorers_eve:symbiont/activate

#Spell is complex due to NBT changes. First, just check when the NextSpellPick NBT is reset, then convert the Spell NBT to a score.
execute store result score @s NewSymbiontSpellDelay run data get entity @s NextSpellPick
execute if score @s NewSymbiontSpellDelay > @s SymbiontSpellDelay run function explorers_eve:symbiont/detect_spell
scoreboard players operation @s SymbiontSpellDelay = @s NewSymbiontSpellDelay

#When the Symbiont enters phase 2, fun things happen.
execute unless entity @s[tag=RushMode] if score @s Health <= @s HealthLimit run function explorers_eve:symbiont/phase_2

#When needed, equip armor!
execute if entity @s[tag=NeedsArmor] run function explorers_eve:symbiont/armor/timer

#Formidi-blade effects! This only happens in the rematch.
execute if entity @s[tag=WeaponActive,scores={SymbiontStage=0}] run function explorers_eve:symbiont/blade/main

#Track Formidi-blade explosions.
execute as @e[tag=FormidibladeMark] at @s run function explorers_eve:symbiont/blade/move

#Use spikes in the resummoned battle because fun. Spikes start whenever it switches what spell it's using.
execute as @e[tag=SymbiontSpikeMark] at @s run function explorers_eve:symbiont/spike/tick

#Evoker Fangs are very limited.
execute if entity @s[tag=FangWait] if entity @e[type=minecraft:evoker_fangs,distance=..16] run function explorers_eve:symbiont/fangs_end

#In stage 0 (normal attacking), absorb health from any sickened mob that's too close. DEBUG, disabled for now.
#execute if score @s SymbiontStage matches 0 if score @s SymbiontSpell matches 1 run tag @e[type=#explorers_eve:sickened_illagers] add CannotConsume
#execute if score @s SymbiontStage matches 0 unless entity @s[tag=BowelsSymbiont] as @e[type=#witherstormmod:sickened_mobs,tag=!CannotConsume,distance=..2] at @s run function explorers_eve:symbiont/consume_mob

#In stage 1 (summoning mobs), summon tentacles. The Storm will shoot skulls, too.
execute if score @s SymbiontStage matches 1 unless entity @s[tag=FinalBossMinion] run function explorers_eve:symbiont/summon
execute if entity @s[tag=Tentacles] unless score @s SymbiontStage matches 1 unless entity @s[tag=FinalBossMinion] run function explorers_eve:symbiont/summon_end

#After five seconds, tentacles activate. Has to be here or a short summon time would leave the tentacles frozen.
scoreboard players remove @s TentacleTime 1
execute if score @s TentacleTime matches -100 run execute as @e[tag=SymbiontTentacle,distance=..128] at @s run function explorers_eve:symbiont/tentacles_activate

#Recharge effects. When the Symbiont isn't in Stage 2, reset recharge time.
execute if score @s SymbiontStage matches 2 run function explorers_eve:symbiont/recharge
execute unless score @s SymbiontStage matches 2 run scoreboard players set @s RechargeTime 0

#No floating away! And no freezing!
effect clear @s levitation
effect clear @s twilightforest:frosted

#No normal Wither Storm skulls.
execute at @e[type=witherstormmod:wither_storm,distance=..200] positioned ~ ~20 ~ run kill @e[type=witherstormmod:flaming_wither_skull,tag=!FlamingSkull,distance=..24]
execute at @e[type=witherstormmod:wither_storm_segment,distance=..200] positioned ~ ~15 ~ run kill @e[type=witherstormmod:flaming_wither_skull,tag=!FlamingSkull,distance=..24]

#Water freezes when the Symbiont touches it.
execute if block ~ ~ ~ #explorers_eve:liquid run function explorers_eve:symbiont/freeze

#Bowels Symbiont effects.
execute if entity @s[tag=BowelsSymbiont] run function explorers_eve:command_block/symbiont/tick

#Final battle Symbiont effects.
execute if entity @s[tag=FinalBossMinion] unless entity @a[distance=..48,gamemode=!spectator,tag=FinalBattling] unless score @s SymbiontStage matches 2 at @p[gamemode=!spectator,tag=FinalBattling,distance=..300] run function explorers_eve:final/minion_teleport