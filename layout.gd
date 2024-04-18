@tool
extends Node2D

## Load the spine json file to arrange nodes based on names.
@export_file("*.json") var json_file: set = json_load
## Automatically fill the y offest based on project window settings. When true, you cannot manually enter a "y" offset.
@export var auto_y_offset:bool = false: set = auto_fill_y
## Change the y-axis offset. If Auto Y Offset is true, you cannot manually edit this number.
@export var y_offset:float = 0: set = set_y
## Change the x-axis offset.
@export var x_offset:float = 0: set = set_x

func auto_fill_y(auto_bool:bool):
	if auto_bool:
		#Sets the y offset to the project window viewport height.
		set_y(ProjectSettings.get_setting("display/window/size/viewport_height"))
		auto_y_offset = auto_bool
	else:
		auto_y_offset = auto_bool

func set_y(new_y:float):
	if !auto_y_offset:
		y_offset = new_y
		run_arrange()

func set_x(new_x:float):
	x_offset = new_x
	run_arrange()

func json_load(_stuff):
	json_file = _stuff
	run_arrange()

func run_arrange() -> void:
	if json_file != null:
		#Load the file.
		var data_file = FileAccess.open(json_file, FileAccess.READ)
		#Parse the json file.
		var data_parsed = JSON.parse_string(data_file.get_as_text())
		#Cycle through the json/dictionary.
		var item_num = 0
		for item in data_parsed["skins"]["default"]:
			var node_name = item
			var dict_ref = data_parsed["skins"]["default"][item][item]
			#When dragging and dropping sprites, node names are automatically capitalized. This adjusts the strings from the json to match.
			node_name = node_name.capitalize()
			#When dragging and dropping sprites, node names do not have spaces. This adjusts the strings from the json to match.
			node_name = node_name.replace(" ","")
			#Searches scene for matching nodes.
			if has_node(node_name):
				#Arranges the node within the scene tree according to the layer order from the design file.
				move_child(get_node(node_name), item_num)
				#Positions the node along the x and y axis.
				get_node(node_name).position = Vector2(dict_ref["x"] + x_offset, dict_ref["y"] * -1 + y_offset)
				item_num += 1
	else:
		print("no json file")
