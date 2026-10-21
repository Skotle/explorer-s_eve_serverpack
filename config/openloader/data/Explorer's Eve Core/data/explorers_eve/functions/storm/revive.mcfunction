#If the player tries to flee from a downed Wither Storm, it gets mad.
execute at @e[type=witherstormmod:command_block,limit=1,sort=nearest,distance=..250] run fill ~6 ~ ~6 ~-6 ~-15 ~-6 air replace witherstormmod:hardened_flesh_block
witherstormmod revive @s
advancement grant @a only witherstormmod:main/weakened_arise_stronger