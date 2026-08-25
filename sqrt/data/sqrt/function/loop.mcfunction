data modify storage sqrt: mid set compute default { \
    type: "average", \
    operands: [ \
        { type: "storage", storage: "sqrt:", path: "l" }, \
        { type: "storage", storage: "sqrt:", path: "r" } \
    ] \
}

data modify storage sqrt: mid_squared set compute default { \
    type: "product", \
    operands: [ \
        { type: "storage", storage: "sqrt:", path: "mid" }, \
        { type: "storage", storage: "sqrt:", path: "mid" } \
    ] \
}

data modify storage sqrt: max set compute default { \
    type: "maximum", \
    operands: [ \
        { type: "storage", storage: "sqrt:", path: "mid_squared" }, \
        { type: "storage", storage: "sqrt:", path: "x" } \
    ] \
}

execute store success storage sqrt: is_greater_than_x byte 1.0 run data modify storage sqrt: max set from storage sqrt: x
execute if data storage sqrt: {is_greater_than_x: true} run data modify storage sqrt: r set from storage sqrt: mid
execute if data storage sqrt: {is_greater_than_x: false} run data modify storage sqrt: l set from storage sqrt: mid

data modify storage sqrt: iteration set compute default { \
    type: "sum", \
    operands: [ \
        { type: "storage", storage: "sqrt:", path: "iteration" }, \
        { type: "constant", value: 1 } \
    ] \
} integer

execute unless data storage sqrt: {iteration: 50} run function sqrt:loop
