### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> exchange_party:system/shift/extra
# 入れ替えられるデータになるまで余分にシフト

data modify storage ex_party: data2 append from storage ex_party: data[-1]
data remove storage ex_party: data[-1]
execute if data storage ex_party: data[-1].out run function exchange_party:system/shift/extra
