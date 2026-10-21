#Spawn a big tiling of marks and randomly kill a bunch of them.
summon marker ~24 ~ ~ {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-24 ~ ~ {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~ ~ ~24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~ ~ ~-24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~24 ~ ~8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-24 ~ ~8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~8 ~ ~24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~8 ~ ~-24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~24 ~ ~-8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-24 ~ ~-8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-8 ~ ~24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-8 ~ ~-24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~24 ~ ~16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-24 ~ ~16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~16 ~ ~24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~16 ~ ~-24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~24 ~ ~-16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-24 ~ ~-16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-16 ~ ~24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-16 ~ ~-24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~24 ~ ~24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-24 ~ ~24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~24 ~ ~-24 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-24 ~ ~-24 {Tags:["QuakeMark","NewQuakeMark"]}
kill @e[tag=NewQuakeMark,limit=16,sort=random]
tag @e remove NewQuakeMark

summon marker ~16 ~ ~ {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-16 ~ ~ {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~ ~ ~16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~ ~ ~-16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~16 ~ ~8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-16 ~ ~8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~8 ~ ~16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~8 ~ ~-16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~16 ~ ~-8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-16 ~ ~-8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-8 ~ ~16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-8 ~ ~-16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~16 ~ ~16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-16 ~ ~16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~16 ~ ~-16 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-16 ~ ~-16 {Tags:["QuakeMark","NewQuakeMark"]}
kill @e[tag=NewQuakeMark,limit=8,sort=random]
tag @e remove NewQuakeMark

summon marker ~ ~ ~ {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~8 ~ ~ {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-8 ~ ~ {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~ ~ ~8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~ ~ ~-8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~8 ~ ~8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-8 ~ ~8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~8 ~ ~-8 {Tags:["QuakeMark","NewQuakeMark"]}
summon marker ~-8 ~ ~-8 {Tags:["QuakeMark","NewQuakeMark"]}
kill @e[tag=NewQuakeMark,limit=4,sort=random]
tag @e remove NewQuakeMark