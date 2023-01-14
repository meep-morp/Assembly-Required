extends Sprite

class_name Lanes

var laneCount: int
var laneStruct: Array

func _init(lanes: int = 9):
	laneCount = lanes
	laneStruct = [[], [], []]
	
	for l in laneStruct.size():
		l.resize(laneCount)
	

