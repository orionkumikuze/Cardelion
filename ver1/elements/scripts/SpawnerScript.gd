extends MeshInstance2D
var knight = preload("res://elements/objects/GameNodes/invaders/Knight.tscn")
func _ready():
	pass # Replace with function body.

func _process(_delta):
	if(GameManager.rounded==true):
		for _i in range(GameManager.roundAmount):
			var Knight = knight.instance()
			Knight.position.x += 10
			get_parent().get_parent().get_child(1).add_child(Knight)
		GameManager.rounded = false
	pass
