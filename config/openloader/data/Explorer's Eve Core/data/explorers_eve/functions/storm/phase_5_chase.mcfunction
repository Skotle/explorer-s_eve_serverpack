#Force the Storm to chase the player.
witherstormmod ultimateTarget chase begin @s
data modify entity @s TargetRunawayAttempts set value 0
tag @s remove Phase5Chase