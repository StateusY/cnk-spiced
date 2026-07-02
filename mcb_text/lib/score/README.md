# Score

A shorthand template for `scoreboard` commands.

## Installing

Add the `score.mcbt` file to your `src` folder.

## Usage

### `abs`

Set a score to it's absolute value.

`abs <name> <objective>`

> Equivalent to `execute if score <name> <objective> matches ..-1 run op <name> <objective> *= #-1 <config.internalScoreboardName>`

```mcb
set #value -10
abs #value myObjective
# #value myObjective == 10
```

### `add`

Add a constant to a score.

> Equivalent to `scoreboard players add`

`add <name> <objective> <value>`

```mcb
set #value 10
add #value myObjective 10
# #value myObjective == 20
```

### `configure`

Set the default objective for commands that require one.

`configure defaultobjective <objective>`

```mcb
configure defaultobjective myObjective
```

### `create`

Create a new scoreboard objective.

> Equivalent to `scoreboard objectives add`

`create <name> [criteria]`

```mcb
create myObjective dummy
# Criteria is optional and defaults to `dummy`
create dummyObjective
```

### `delete`

Delete a scoreboard objective.

> Equivalent to `scoreboard objectives remove`

`delete <name>`

```mcb
delete myObjective
```

### `display`

Set the display slot of an objective.

> Equivalent to `scoreboard objectives setdisplay`

`display <slot> [objective]`

```mcb
display sidebar myObjective
# Omitting the objective will clear the display slot
display list
```

### `get`

Returns the value of a score.

> Equivalent to `scoreboard players get`

`get <name> <objective>`

```mcb
set #value myObjective 20
execute store result score #result myObjective run \
	get #value myObjective
# #result myObjective == 20
```

### `op`

Perform an operation on two scores and store the result in the first score.

> Equivalent to `scoreboard players operation`

`op <name1> [objective1] <operation> <name2> [objective2]`

```mcb
set #value1 myObjective 10
set #value2 myObjective 5
op #value1 myObjective += #value2 myObjective
# #value1 myObjective == 15
```

If the second objective is omitted, the first objective is used

`op <name1> <objective1> <operation> <name2>`

```mcb
set #value1 myObjective 10
set #value2 myObjective 5
op #value1 myObjective *= #value2
# #value1 myObjective == 50
```

If both objectives are omitted, the default objective is used

`op <name1> <operation> <name2>`

```mcb
set #value1 defaultObjective 10
set #value2 defaultObjective 5
op #value1 *= #value2
# #value1 defaultObjective == 50
```

Default objective can be set via the `configure` command.

### `reset`

Remove a tracked score from the scoreboard.

> Equivalent to `scoreboard players reset`

`reset <name> <objective>`

```mcb
set #value myObjective 10
reset #value myObjective
# #value myObjective == null
```

Both `name` and `objective` can be replaced with `*` to reset all objectives for a name, or all scores for an objective respectively.

### `set`

Set a score to a value.

> Equivalent to `scoreboard players set`

`set <name> <objective> <value>`

```mcb
set #value myObjective 10
# #value myObjective == 10
```

If the value is omitted, and the `name` contains a valid integer, it will be used as the value:

`set <name> <objective>`

```mcb
set 10 myObjective
# 10 myObjective == 10

set #100 myObjective
# #100 myObjective == 100

set const_-5 myObjective
# const_-5 myObjective == -5

set 5kg myObjective
# 5kg myObjective == 5
```

If the `run` keyword is used instead of a value, a command may be specified, and the result of that command will be used as the value for the score

> Equivelent to `execute store result score <name> <objective> run <command>`

`set <name> <objective> run <command>`

```mcb
set #boss health run bossbar get foo:boss_bar value
```

If the `from` keyword is used instead of a value, the rest of the command is treated as a `/data get` command.

`set <name> <objective> from block <pos> <path> [scale]`

`set <name> <objective> from entity <target> <path> [scale]`

`set <name> <objective> from storage <storage> <path> [scale]`

> Equivelent to `execute store result score <name> <objective> run data get <mode> <target> <path> [scale]`

```mcb
set #value myObjective from block ~ ~-1 ~ Items[0].Count
```

### `sub`

Subtract a constant from a score.

> Equivalent to `scoreboard players remove`

`sub <name> <objective> <value>`

```mcb
set #value myObjective 10
sub #value myObjective 5
# #value myObjective == 5
```
