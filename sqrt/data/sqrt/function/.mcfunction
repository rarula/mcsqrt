# 実数 x を受け取って x の平方根を返す関数
# @param {float} sqrt: x - 平方根を計算する実数
# @returns {float} sqrt: value - 平方根の近似値

data modify storage sqrt: iteration set value 0
data modify storage sqrt: l set value 0.0
data modify storage sqrt: r set from storage sqrt: x
function sqrt:loop

data modify storage sqrt: value set from storage sqrt: l
