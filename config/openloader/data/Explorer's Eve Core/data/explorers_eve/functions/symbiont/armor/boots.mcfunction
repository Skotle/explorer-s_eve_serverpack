#Equip a piece of armor, complete with effects.
item replace entity @s armor.feet with blue_skies:charoite_boots{Enchantments:[{id:"minecraft:blast_protection",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-3524430,329728315,-2022886317,752202204]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-958882021,-1024768701,-2134148488,-1402097657]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.5,Operation:0,UUID:[I;-755172716,-1444986537,-2138923336,-871990407]}]} 1

playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 4 1
playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 4 1.3

particle blue_skies:star_flare 1 0 1 ~ ~0.25 ~ 0.25 0.15 0.25 0.03 40