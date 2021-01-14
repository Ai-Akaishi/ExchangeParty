### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> exchange_party:system/shift/back
# シフトを解除

data modify storage ex_party: data append from storage ex_party: data2[-1]
data remove storage ex_party: data2[-1]
execute if data storage ex_party: data2[0] run function exchange_party:system/shift/back
