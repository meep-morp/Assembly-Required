extends Node
var lanes = preload("../../scenes/Lanes/Lanes.tscn")


func new_game():
	var l = lanes.instance()
	l.setup(30)
	add_child(l)


func _ready():
	new_game()
