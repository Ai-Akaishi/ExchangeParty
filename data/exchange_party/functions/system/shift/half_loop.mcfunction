

data modify storage ex_party: data2 append from storage ex_party: data[-1]
data remove storage ex_party: data[-1]
execute unless data storage ex_party: data2[-1].out run execute store result storage ex_party: whole int 1 run data get storage ex_party: whole 0.999999999
execute unless data storage ex_party: data2[-1].out run execute store result storage ex_party: half int 1 run data get storage ex_party: half 0.999999999
execute unless data storage ex_party: {half:0} run function exchange_party:system/shift/half_loop
