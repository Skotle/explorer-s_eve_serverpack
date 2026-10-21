#Equip a piece of armor, complete with effects. Also reset everything.
item replace entity @s weapon.mainhand with witherstormmod:formidi_blade{Enchantments:[{}]} 1
item replace entity @s weapon.offhand with witherstormmod:eye_of_the_storm{Enchantments:[{}]} 1
data merge entity @s {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CanPickUpLoot:0b}

playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 4 1.4
playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 4 1.7
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 4 2

particle blue_skies:star_flare 1 0 1 ~ ~3 ~ 0.25 0.35 0.25 0.03 60

tag @s remove NeedsArmor
tag @s add WeaponActive
scoreboard players reset @s SymbiontArmorTime

data merge entity @s {SpellsUsed:0,NextSpellPick:1}

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 1 0 0 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -1 0 0 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0 0 1 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0 0 -1 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.7 0 0.7 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.7 0 0.7 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.7 0 -0.7 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.7 0 -0.7 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.383 0 0.924 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.383 0 0.924 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.383 0 -0.924 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.383 0 -0.924 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.924 0 0.383 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.924 0 0.383 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.924 0 -0.383 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.924 0 -0.383 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.195 0 0.981 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.195 0 0.981 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.195 0 -0.981 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.195 0 -0.981 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.981 0 0.195 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.981 0 0.195 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.981 0 -0.195 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.981 0 -0.195 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.556 0 0.831 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.556 0 0.831 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.556 0 -0.831 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.556 0 -0.831 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.831 0 0.556 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.831 0 0.556 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.831 0 -0.556 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.831 0 -0.556 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.098 0 0.995 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.098 0 0.995 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.098 0 -0.995 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.098 0 -0.995 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.995 0 0.098 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.995 0 0.098 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.995 0 -0.098 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.995 0 -0.098 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.29 0 0.957 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.29 0 0.957 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.29 0 -0.957 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.29 0 -0.957 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.957 0 0.29 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.957 0 0.29 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.957 0 -0.29 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.957 0 -0.29 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.471 0 0.882 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.471 0 0.882 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.471 0 -0.882 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.471 0 -0.882 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.882 0 0.471 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.882 0 0.471 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.882 0 -0.471 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.882 0 -0.471 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.634 0 0.773 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.634 0 0.773 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.634 0 -0.773 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.634 0 -0.773 0.75 0 force

particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.773 0 0.634 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.773 0 0.634 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ 0.773 0 -0.634 0.75 0 force
particle blue_skies:star_flare 1 0 1 ~ ~3.25 ~ -0.773 0 -0.634 0.75 0 force