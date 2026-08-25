# 実数 x を受け取って x の平方根を返す関数
# @param {float} x - 平方根を計算する実数

# int iteration = 0
# 実数 l = 0.0
# 実数 r = x
# 実数 mid = average(l, r)

data modify storage sqrt: iteration set value 0
data modify storage sqrt: l set value 0.0
data modify storage sqrt: r set from storage sqrt: x
function sqrt:loop

tellraw @a {"text":"平方根の計算が完了しました。", "color":"green"}
tellraw @a {"text":"平方根の近似値: ", "color":"green", "extra":[{"storage":"sqrt:", "nbt":"l"}]}
