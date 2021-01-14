### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> exchange_party:system/exchange
# 入れ替える

function exchange_party:exchange_inverted

data modify storage ex_party: output set value []
execute if data storage ex_party: data[-1] run function exchange_party:system/reverse_output
