# While template

A template that adds runtime `while`, `until`, `do-while`, and `do-until` loops.

## Usage

### `while`

`while execute <condition> run { ... } [finally {...}]`

```mcb
scoreboard players set #test v 5
while execute if score #test v matches 1.. run {
	scoreboard players remove #test v 1
	tellraw @a {score:{name:'#test',objective:'v'}}
}
```

```mcb
scoreboard players set #test v 5
while execute if score #test v matches 1.. run {
	scoreboard players remove #test v 1
	tellraw @a {score:{name:'#test',objective:'v'}}
} finally {
	tellraw @a "Loop finished!"
}
```

### async `while`

`while <interval> execute <condition> run { ... } [finally {...}]`

```
scoreboard players set #test v 5
while 1s execute if score #test v matches 1.. run {
	scoreboard players remove #test v 1
	tellraw @a {score:{name:'#test',objective:'v'}}
} finally {
	tellraw @a "Loop finished!"
}
```

### `until`

`until execute <condition> run { ... } [finally {...}]`

### async `until`

`until <interval> execute <condition> run { ... } [finally {...}]`

### `do-while`

`do { ... } while execute <condition> [finally {...}]`

### async `do-while`

`do { ... } while <interval> execute <condition> [finally {...}]`

### `do-until`

`do { ... } until execute <condition> [finally {...}]`

### async `do-until`

`do { ... } until <interval> execute <condition> [finally {...}]`
