# Description:
#   Hubot rolls dice
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   roll [N]d<S>
#   Rolls N dice with S sides, returning the total value.
#   If no number specified, defaults to 1. Sides must be specified.
#
#
# Author:
#   https://github.com/bshef
#

# Represents rolling one die with the specified number of sides.
# Note that the minimum value is 1 (dice have no 0 value)
roll = (sides) ->
  Math.floor(Math.random() * (sides - 1)) + 1

# Rolls the specified number of dice with the specified number of sides.
rollDice = (number, sides) ->
  result = 0
  for n in [1..number] by 1
    result += roll(sides)
  return result

module.exports = (robot) ->
  robot.respond "roll ([0-9]*)[dD]([0-9]+)", (msg) ->
    number = msg.match[1] ? 1
    sides = msg.match[2]
    response = rollDice(number, sides)
    msg.send response
