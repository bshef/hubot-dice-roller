# hubot-dice-roller
A simple Hubot script that allows users to command Hubot to roll dice.

Usage
-----

    roll [N]d[S]

	   or

    roll [N]D[S]

Rolls N number of S-sided dice, and returns the total result.
The number of sides `S` must be specified.
If no number of dice `N` is specified, the system assumes just 1 die.

Examples
--------

**roll 2d6**
Rolls two 6-sided dice. Returns a result between 2 and 12.

**roll d20**
Rolls one 20-sided die. Returns a result between 1 and 20.
