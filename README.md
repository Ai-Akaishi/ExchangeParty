# ExchangeParty

プレゼント交換会！  
どんなデータのリストでも交換しちゃうデータパックです！


# 動作確認済みバージョン / Verified minecraft versions

- 1.16.4

# パラメータ

```
ex_party: input  
入れ替えるデータをここに入れます。  
  
ex_party: output  
入れ替えられたデータがここに入ります。
```

# メソッド

```
function exchange_party:exchange  
データを入れ替えます。  
  
function exchange_party:exchange_inverted  
データを入れ替えて逆順にしたものにします。
```

# 入れ替えルール

入れ替わらなかったり、入れ替え時にグループができないように交換します。

```
input: [1,2,3,4,5]  
output: [3,2,4,5,1]  
これは2が入れ替わっていないので、起こりません。  
  
input: [1,2,3,4,5]  
output: [3,1,2,5,4]  
これは1,2,3と4,5がグループになって入れ替わっているので、起こりません。  
```

# 使い方サンプル / How To Use

どんなデータ型でも入れ替えられますが、サンプルとして次の２つを載せています。  
  
```
次の数値のリストを入れ替える場合  
  
1. 入力するデータを設定  
data modify storage ex_party: input set value [1,2,3,4,5]  
  
2. 入れ替えファンクションを実行  
function exchange_party:exchange  
  
3. 出力されたデータを取得  
data get storage ex_party: output  
> [3,5,4,1,2]  
  
  
額縁の中のアイテムを入れ替える場合  
  
1. 入力するデータを設定  
execute as @e[type=item_frame] run data modify storage ex_party: input append from entity @s Item  
  
2. 入れ替えファンクションを実行  
function exchange_party:exchange_inverted  
  
3. 出力されたデータを取得  
execute as @e[type=item_frame] run function some:func  
  
# some:func  
data modify entity @s Item set from storage ex_party: output[-1]  
data remove storage ex_party: output[-1]
```

# 連絡はこちら / Contact

https://twitter.com/AiAkaishi

# ライセンス / LICENSE

These codes are released under the MIT License, see LICENSE.
