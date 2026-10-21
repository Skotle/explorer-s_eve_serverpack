#Leave a bad effect zone.
tag @s remove VenomTracker
data merge entity @s {ReapplicationDelay:20,Radius:3f,RadiusPerTick:-0.005f,RadiusOnUse:-3f,Duration:200,Effects:[{"forge:id":"blue_skies:deadly_venom",Id:0,Amplifier:1b,Duration:50}]}
tp @s ~ ~-0.5 ~