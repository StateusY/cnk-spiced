# Sequence template

An intuitive interface for creating a sequence of scheduled functions.

# Usage

```mcb
sequence {
	say This command will run immediately

	sleep 1s
	say This command will run after 1 second

	sleep 1s until execute if entity @a[tag=test]
	say The player has the test tag!

	sleep 1s while execute if entity @a[tag=test]
	say The player lost the test tag!
}
```

## Sub-commands

### `sleep <delay>`

Adds a delay before the next group of commands is executed.

```mcb
sequence {
	say This command will run immediately
	sleep 1s
	say This command will run after 1 second
}
```

### `sleep <delay> while <condition>`

Polls `<condition>` every `<delay>` while it returns `1`, then continues to the next group of commands.

```mcb
sequence {
	say Waiting for the player to get the test tag...
	sleep 1t while execute if entity @a[tag=test]
	say The player has the test tag!
}
```

### `sleep <delay> until <condition>`

Polls `<condition>` every `<delay>` until it returns `1`, then continues to the next group of commands.

```mcb
sequence {
	say Waiting for the player to lose the test tag...
	sleep 1t until execute if entity @a[tag=test]
	say The player lost the test tag!
}
```
