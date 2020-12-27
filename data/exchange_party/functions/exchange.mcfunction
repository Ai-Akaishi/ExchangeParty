

data modify storage ex_party: data set value []
data modify storage ex_party: data2 set value []
data modify storage ex_party: output set value []
function exchange_party:system/set_data

data modify storage ex_party: first set from storage ex_party: data[0]
data modify storage ex_party: data[0].out set value 1

execute store result storage ex_party: remain int 1 if data storage ex_party: data[]

execute store result storage ex_party: half int 0.5 store result storage ex_party: whole int 1 store result storage ex_party: remain int 1 run data get storage ex_party: remain 0.9999999999
execute unless data storage ex_party: {whole:0} run function exchange_party:system/exchange

data modify storage ex_party: data[{out:1}].out set from storage ex_party: first

data modify storage ex_party: output append from storage ex_party: data[].out.in
