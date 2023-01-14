extends Node2D

var tile = preload("../../scenes/Lanes/Tile.tscn")

var laneCount: int
var laneStruct: Array


func setup(tiles: int = 9):
	laneCount = tiles
	laneStruct = [[], [], []]

	for i in laneStruct.size():
		laneStruct[i].resize(laneCount)
		laneStruct[i].fill(0)
		for j in laneCount:
			var tilePos = Vector2(
				position.x + ((i * 1.8 + j) * (70 - i)), position.y + ((8 + i) * 23.5)
			)
			var t = tile.instance()
			t.spawn(tilePos)
			laneStruct[i][j] = t


func _ready():
	for i in laneStruct.size():
		for j in laneCount:
			add_child(laneStruct[i][j])
