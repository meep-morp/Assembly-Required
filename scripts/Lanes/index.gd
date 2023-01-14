extends RigidBody2D

class_name Lanes

var laneCount: int
var laneStruct: Array


func _init(tiles: int = 9):
	laneCount = tiles
	laneStruct = [[], [], []]

	for i in laneStruct.size():
		laneStruct[i].resize(laneCount)
		laneStruct[i].fill(0)
		for j in laneCount:
			var tile = Tile.new(position)
			laneStruct[i][j] = tile
