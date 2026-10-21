#Constantly reset certain config options, just in case.
#No normal evolution, ever.
witherstormmod consumedEntities lock @s

#No bowels hole unless injured at the right time.
execute unless entity @s[tag=BowelsReady] run witherstormmod config server set server.misc.shouldShowHole false
execute if entity @s[tag=BowelsReady] run witherstormmod config server set server.misc.shouldShowHole true

#Force Symbiont spawning to behave.
execute if entity @s[scores={StormPhase=6..},tag=!Phase6Chase] run witherstormmod config server set server.withered_symbiont.canSummonSymbiont true
execute if entity @s[scores={StormPhase=5}] run witherstormmod config server set server.withered_symbiont.canSummonSymbiont false
execute if entity @s[tag=BombReady] run witherstormmod config server set server.withered_symbiont.canSummonSymbiont true
execute if entity @s[tag=CommandBlockHurt] run witherstormmod config server set server.withered_symbiont.canSummonSymbiont false
execute if entity @s[tag=Injured] run witherstormmod config server set server.withered_symbiont.canSummonSymbiont false
execute if entity @s[tag=TNTDistracted] run witherstormmod config server set server.withered_symbiont.canSummonSymbiont false
execute if entity @s[tag=BowelsReady] run witherstormmod config server set server.withered_symbiont.canSummonSymbiont false

#Flying height overrides.
execute if entity @s[scores={StormPhase=4},tag=!Phase4Progress,tag=!Resummoned] run witherstormmod config server set server.misc.flyingHeight 15
execute if entity @s[scores={StormPhase=4},tag=Phase4Progress] run witherstormmod config server set server.misc.flyingHeight 30
execute if entity @s[scores={StormPhase=4},tag=Resummoned] run witherstormmod config server set server.misc.flyingHeight 30
execute if entity @s[scores={StormPhase=5..},tag=!Injured] run witherstormmod config server set server.misc.flyingHeight 50
execute if entity @s[scores={StormPhase=5..},tag=Injured] run witherstormmod config server set server.misc.flyingHeight 10
witherstormmod config server set server.misc.dynamicFlyingHeight false

#Enable random strolling when it doesn't cause problems.
execute if entity @s[tag=!TNTDistracted,tag=!Injured,tag=!DigAiming] run witherstormmod config server set server.ultimate_target_logic.random_strolling.randomStrollingWhenTargetHidden true

#Any setting other than NEAREST will break skull attacks. Nope.
witherstormmod config server set server.ultimate_target_logic.ultimateTargetingType NEAREST

#No amulet override. Ever. Sorry, not sorry.
witherstormmod config server set server.ultimate_target_logic.amuletOverride false

#If Silent Storm mode is active, become silent.
execute if data storage world SilentStorm run function explorers_eve:storm/silent

#If Draconic Temperament mode is active, become angry.
execute if data storage world DraconicTemperament run function explorers_eve:storm/temper