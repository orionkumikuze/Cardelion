extends Node

var mousePos : Vector2
var camPos : Vector2

var names = [
	["Goblin" , 3],
	["Skeleton" , 5],
	["Slime" , 1],
	["Rat" , 1],
	["Zombie" , 4]
]
var spawnName = 0
var rounded = false
var roundAmount = 0
var rng = RandomNumberGenerator.new()
