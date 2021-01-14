### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> exchange_party:system/set_data
# 入れ替えるための準備

data modify storage ex_party: data append value {}
data modify storage ex_party: data[-1].in set from storage ex_party: input[-1]
data remove storage ex_party: input[-1]
execute if data storage ex_party: input[0] run function exchange_party:system/set_data
