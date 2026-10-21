#Clear up markers and tags to resume normal behavior.
tag @s remove StormAttacking
tag @s remove UprootActive
kill @e[tag=UprootPullTarget,limit=1,sort=nearest]