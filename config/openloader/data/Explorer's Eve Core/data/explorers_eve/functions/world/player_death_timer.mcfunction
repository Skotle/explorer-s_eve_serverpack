#Handle bowels corpse effects. This must happen before other effects just in case the player loiters on the death screen for 10 minutes.
execute if entity @s[tag=BowelsDeath] unless entity @s[nbt={Health:0f}] run function explorers_eve:world/bowels_corpse_move

#The player gets some time where the Storm will be calm if they die to it.
scoreboard players add @s DeathMercy 1
execute if entity @e[tag=SymbiontBattleStart,distance=..32] run tag @s remove RecentDeath
execute if score @s DeathMercy matches 600.. unless entity @s[nbt={Health:0f}] run tag @s remove RecentDeath

#Backup function to return player inventory upon death that causes a dimension shove back into the Overworld.
execute if dimension overworld unless entity @s[tag=KeepingCurseBroken] run tag @s add NeedsInventory
execute if dimension overworld unless entity @s[tag=KeepingCurseBroken] run tag @s add ExitedBlueSkies
execute if entity @s[tag=NeedsInventory] as @e[tag=OverworldInventory] if score @s UUID = @p[tag=NeedsInventory] UUID as @p[tag=NeedsInventory] in witherstormmod:bowels positioned 0 200 0 run function explorers_eve:world/blue_skies/take_inventory
tag @s remove NeedsInventory
tag @s remove ExitedBlueSkies