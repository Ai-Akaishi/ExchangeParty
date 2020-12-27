

execute unless data storage ex_party: {half:0} run function exchange_party:system/shift/random
execute if data storage ex_party: data[-1].out run function exchange_party:system/shift/extra

data modify storage ex_party: data[{out:1}].out set from storage ex_party: data[-1]
execute if data storage ex_party: data[-1].out run data modify storage ex_party: data2[{out:1}].out set from storage ex_party: data[-2]
execute if data storage ex_party: data[-1].out run data remove storage ex_party: data[-1]
data modify storage ex_party: data[-1].out set value 1

function exchange_party:system/shift/back

execute store result storage ex_party: half int 0.5 store result storage ex_party: whole int 1 store result storage ex_party: remain int 1 run data get storage ex_party: remain 0.9999999999
execute unless data storage ex_party: {whole:0} run function exchange_party:system/exchange
