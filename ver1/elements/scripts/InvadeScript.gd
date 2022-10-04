extends Node2D
var move = 5
func _process(delta):
	scale.x = 0.05
	scale.y = 0.05
	match move:
		1:
			position.y -= 125*delta
		2:
			position.y += 125*delta
		3:
			position.x -= 125*delta
		4:
			position.x += 125*delta

func _on_Area2D_area_entered(area):
	if(str(area.name)=="UperMoveArea.tscn"):
		position.y -= 5
		move = 1
		print(move)
	elif(str(area.name=="DownMoveArea.tscn")):
		position.y += 5
		move = 2
	if(str(area.name)=="LeftMoveArea.tscn"):
		position.x -= 5
		move = 3
	elif(str(area.name=="RightMoveArea.tscn")):
		position.x += 5
		move = 4
	print(area.name)
	pass # Replace with function body.
func _on_Area2D_area_exited(_area):
	move = 0
	pass # Replace with function body.
