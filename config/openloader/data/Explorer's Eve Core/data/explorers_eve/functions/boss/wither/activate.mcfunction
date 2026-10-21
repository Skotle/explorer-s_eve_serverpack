#Start the fight.
scoreboard players set @s Health 300
tag @s add WitherInvul
tag @s add Activated

#Unbreakable, undroppable Leather Boots with Blast Protection to severely limit cheese via explosions or Powder Snow.
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1495567986,1046236924,-1827436314,1327856578],Slot:"feet"}]} 1
data modify entity @s ArmorDropChances set value [0f,0f,0f,0f]

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true