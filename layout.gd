@tool
extends Node2D

@export var arrange_items:bool = false: set = arrange_go
@export_file("*.json") var json_file
@export var y_offset:float = 0
@export var x_offset:float = 0

func _ready():
	pass 

func arrange_go(_arranged_stuff = null):
	if json_file != null:
		var data_file = FileAccess.open(json_file, FileAccess.READ)
		var data_parsed = JSON.parse_string(data_file.get_as_text())
		var item_num = 0
		for item in data_parsed["skins"]["default"]:
			var node_name = item
			var dict_ref = data_parsed["skins"]["default"][item][item]
			node_name = node_name.capitalize()
			node_name = node_name.replace(" ","")
			print(node_name)
			if has_node(node_name):
				print(dict_ref)
				move_child(get_node(node_name), item_num)
				get_node(node_name).position = Vector2(dict_ref["x"] + x_offset, dict_ref["y"] + y_offset)
				item_num += 1
	else:
		print("no json file")
