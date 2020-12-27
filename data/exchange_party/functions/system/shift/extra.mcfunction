

data modify storage ex_party: data2 append from storage ex_party: data[-1]
data remove storage ex_party: data[-1]
execute if data storage ex_party: data[-1].out run function exchange_party:system/shift/extra
