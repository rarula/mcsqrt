# mcsqrt

Minecraft 26.3-snapshot-10 で追加された浮動小数点演算を用いて、実数 x の平方根を近似するデータパック

## 対応バージョン
- 26.3-snapshot-10

## 使い方
```mcfunction
data modify storage sqrt: x set value 2.0f
function sqrt:
tellraw @a {"storage":"sqrt:", "nbt":"value"}
# 出力: 1.4142135f

data modify storage sqrt: x set value 10000.0f
function sqrt:
tellraw @a {"storage":"sqrt:", "nbt":"value"}
# 出力: 100.0f

data modify storage sqrt: x set value 4923154.0f
function sqrt:
tellraw @a {"storage":"sqrt:", "nbt":"value"}
# 出力: 2218.818f
```

## ライセンス
[CC0-1.0](LICENSE)
