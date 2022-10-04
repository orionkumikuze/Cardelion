extends Node

var zombie = preload("res://elements/objects/GameNodes/stations/Zombie.tscn")
var slime = preload("res://elements/objects/GameNodes/stations/Slime.tscn")
var rat = preload("res://elements/objects/GameNodes/stations/Rat.tscn")
var skeleton = preload("res://elements/objects/GameNodes/stations/Skeleton.tscn")
var goblin = preload("res://elements/objects/GameNodes/stations/Goblin.tscn")

func _ready():
	pass # Replace with function body.
	
#func _process(delta):
#	pass


func _on_SpawnArea_area_entered(area):
	if(str(area.name)=="Cardea"):
		match area.get_parent().get_child(1).text:
			"Zombie":
				var k = zombie.instance()
				add_child(k)
				pass
			"Slime":
				var k = slime.instance()
				add_child(k)
				pass
			"Goblin":
				var k = slime.instance()
				add_child(k)
				pass
			"Skeleton":
				var k = slime.instance()
				add_child(k)
				pass
			"Rat":
				var k = slime.instance()
				add_child(k)
				pass
		pass
	pass # Replace with function body.
