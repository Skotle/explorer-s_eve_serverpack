#Make markers for potion attacks.
execute unless block ~8 ~ ~ air run summon marker ~8 ~1 ~ {Tags:["SummonerMark"]}
execute unless block ~-8 ~ ~ air run summon marker ~-8 ~1 ~ {Tags:["SummonerMark"]}
execute unless block ~ ~ ~8 air run summon marker ~ ~1 ~8 {Tags:["SummonerMark"]}
execute unless block ~ ~ ~-8 air run summon marker ~ ~1 ~-8 {Tags:["SummonerMark"]}