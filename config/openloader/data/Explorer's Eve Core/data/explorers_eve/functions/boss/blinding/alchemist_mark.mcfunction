#Make markers for golem spawns.
execute if block ~7 ~ ~ air run summon marker ~7 ~ ~ {Tags:["AlchemistMark"]}
execute if block ~-7 ~ ~ air run summon marker ~-7 ~ ~ {Tags:["AlchemistMark"]}
execute if block ~ ~ ~7 air run summon marker ~ ~ ~7 {Tags:["AlchemistMark"]}
execute if block ~ ~ ~-7 air run summon marker ~ ~ ~-7 {Tags:["AlchemistMark"]}