#Make a ring!
tp @s ~ ~ ~ ~3 ~
particle end_rod ^1.4 ^-0.45 ^ ^-500000 ^ ^ 0.00000025 0 force @a[distance=..128]
particle end_rod ^-1.4 ^-0.45 ^ ^500000 ^ ^ 0.00000025 0 force @a[distance=..128]
particle end_rod ^ ^-0.45 ^1.4 ^ ^ ^-500000 0.00000025 0 force @a[distance=..128]
particle end_rod ^ ^-0.45 ^-1.4 ^ ^ ^500000 0.00000025 0 force @a[distance=..128]

particle blue_skies:star_flare 1 0 1 ^1.4 ^-0.45 ^ 0 0 0 0 0 force @a[distance=..128]
particle blue_skies:star_flare 1 0 1 ^-1.4 ^-0.45 ^ 0 0 0 0 0 force @a[distance=..128]
particle blue_skies:star_flare 1 0 1 ^ ^-0.45 ^1.4 0 0 0 0 0 force @a[distance=..128]
particle blue_skies:star_flare 1 0 1 ^ ^-0.45 ^-1.4 0 0 0 0 0 force @a[distance=..128]