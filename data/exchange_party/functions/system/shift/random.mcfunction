

data modify storage ex_party: for set from storage ex_party: whole
execute if data storage ex_party: {for:3} if predicate exchange_party:half_chance_for3 run function exchange_party:system/shift/half
execute if data storage ex_party: {for:5} if predicate exchange_party:half_chance_for5 run function exchange_party:system/shift/half
execute if data storage ex_party: {for:7} if predicate exchange_party:half_chance_for7 run function exchange_party:system/shift/half
execute if data storage ex_party: {for:9} if predicate exchange_party:half_chance_for9 run function exchange_party:system/shift/half
execute if data storage ex_party: {for:11} if predicate exchange_party:half_chance_for11 run function exchange_party:system/shift/half
execute unless data storage ex_party: {for:3} unless data storage ex_party: {for:5} unless data storage ex_party: {for:7} unless data storage ex_party: {for:9} unless data storage ex_party: {for:11} if predicate exchange_party:half_chance run function exchange_party:system/shift/half
execute store result storage ex_party: whole int 1 run data get storage ex_party: whole 0.5
execute store result storage ex_party: half int 1 run data get storage ex_party: half 0.5
execute unless data storage ex_party: {half:0} run function exchange_party:system/shift/random
