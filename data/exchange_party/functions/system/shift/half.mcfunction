### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> exchange_party:system/shift/half
# 入れ替え用二分探索

function exchange_party:system/shift/half_loop
execute store result storage ex_party: whole int 1 run data get storage ex_party: whole 2
execute store result storage ex_party: half int 1 run data get storage ex_party: whole 0.5
