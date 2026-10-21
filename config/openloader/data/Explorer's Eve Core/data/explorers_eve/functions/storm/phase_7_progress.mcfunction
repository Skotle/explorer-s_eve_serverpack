#Forces the Wither Storm to its final state. Triggered by killing the Symbiont rematch.
data modify entity @s ShouldShowHole set value 1b
witherstormmod config server set server.misc.shouldShowHole true
witherstormmod ultimateTarget distractions makeFocused @s
data remove entity @s SymbiontSummoningCooldown

tag @s add BowelsReady