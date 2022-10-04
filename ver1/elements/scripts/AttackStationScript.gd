extends Node

func _ready():
	pass # Replace with function body.

func _on_Area2D_area_entered(area):
	if(str(area.name)=="KnightArea"):
		area.queue_free()
		pass
	pass # Replace with function body.
