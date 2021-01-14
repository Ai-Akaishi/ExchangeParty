### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> exchange_party:system/reverse_output
# 逆順に出力する

data modify storage ex_party: output append from storage ex_party: data[-1].out.in
data remove storage ex_party: data[-1]
execute if data storage ex_party: data[-1] run function exchange_party:system/reverse_output
