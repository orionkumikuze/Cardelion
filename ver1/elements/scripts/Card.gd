extends Node2D

var timer = 30
var go = 1

var CardName = ""
var attack : int

func _ready():
	var card = GameManager.spawnName
	CardName = GameManager.names[card][0]
	attack = GameManager.names[card][1]
	$Label.text = str(CardName)
	$Label2.text = "attack: "+str(attack)
	pass # Replace with function body.

func _process(_delta):
	if($Button.is_pressed()==true and timer == 30):
		go *= -1
		timer = 0
	
	if(timer!=30):
		timer += 1

	pass


func _on_Area2D_area_entered(area):
	if(str(area.name)=="SpawnArea"):
		queue_free()
	pass # Replace with function body.
