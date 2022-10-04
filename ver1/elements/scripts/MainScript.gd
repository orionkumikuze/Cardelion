extends Node

var card = preload("res://elements/objects/GameNodes/Card.tscn")
var timer = 30

func _input(event):
   # Mouse in viewport coordinates.
	if event is InputEventMouseMotion:
		GameManager.mousePos = Vector2(event.position)
func _ready():
	pass # Replace with function body.
#var names = [
#	["Goblin" , 3],
#	["Skeleton" , 5],
#	["Slime" , 1],
#	["Rat" , 1],
#	["Zombie" , 4]
#]
func _process(_delta):
	if($Camera2D/Node2D/Button.is_pressed()==true and timer == 30):
		GameManager.spawnName = 4
		var Card = card.instance()
		$Camera2D.add_child(Card)
		timer = 0
	elif($Camera2D/Node2D/Button2.is_pressed()==true and timer == 30):
		GameManager.spawnName = 0
		var Card = card.instance()
		$Camera2D.add_child(Card)
		timer = 0
	elif($Camera2D/Node2D/Button3.is_pressed()==true and timer == 30):
		GameManager.spawnName = 2
		var Card = card.instance()
		$Camera2D.add_child(Card)
		timer = 0
	elif($Camera2D/Node2D/Button4.is_pressed()==true and timer == 30):
		GameManager.spawnName = 1
		var Card = card.instance()
		$Camera2D.add_child(Card)
		timer = 0
	elif($Camera2D/Node2D/Button5.is_pressed()==true and timer == 30):
		GameManager.spawnName = 3
		var Card = card.instance()
		$Camera2D.add_child(Card)
		timer = 0
	elif($Camera2D/Node2D/Button6.is_pressed()==true and timer == 30):
		GameManager.rounded = true
		GameManager.roundAmount += 5
		timer = 0
	if(timer!=30):
		timer += 1
	pass
