# Spine JSON Node Position for Godot 4

- Quickly position and order nodes according to spine json exported from an art program. 
- This script will reposition the nodes on the stage and reorder the nodes within the scene tree to match the layer order in the design file. 
- This function will work for any node matching the names. So you could reparent the sprites to other nodes of a matching name and the script can still re-order everything. 
- If your art program does not have a json export, you can potentially save it into a format for another program that does. In this example I am using Affinity Designer. 
- If your exported json does not match the format below, you can modify the script to adjust for the changes.

## Create your design in your preferred art program.
![Affinity Designer Design](/readme-images/affinity_design.PNG)

## Export your images with the Spine JSON file type.
Export directly or bring your images into your project folder.
![Affinity Designer Export](/readme-images/affinity_export.PNG)

The exported json file should look something like this:
```
{"skeleton":{"images":""},
"bones":[{"name":"root"}],
"slots":[
	{"name":"X","bone":"root","attachment":"X"},
	{"name":"Yy","bone":"root","attachment":"Yy"},
	{"name":"Z","bone":"root","attachment":"Z"},
	{"name":"H","bone":"root","attachment":"H"},
	{"name":"G","bone":"root","attachment":"G"},
	{"name":"F","bone":"root","attachment":"F"},
	{"name":"E","bone":"root","attachment":"E"},
	{"name":"D","bone":"root","attachment":"D"},
	{"name":"C","bone":"root","attachment":"C"},
	{"name":"A","bone":"root","attachment":"A"},
	{"name":"B","bone":"root","attachment":"B"}
],
"skins":{
	"default":{
		"X":{"X":{"x":960,"y":540,"width":928,"height":928}},
		"Yy":{"Yy":{"x":960,"y":540,"width":596,"height":596}},
		"Z":{"Z":{"x":960,"y":540,"width":262,"height":262}},
		"H":{"H":{"x":1725.5,"y":909,"width":261,"height":262}},
		"G":{"G":{"x":173.5,"y":908,"width":261,"height":262}},
		"F":{"F":{"x":1725.5,"y":182.5,"width":261,"height":261}},
		"E":{"E":{"x":173.5,"y":200.5,"width":297,"height":283}},
		"D":{"D":{"x":1725.5,"y":909.5,"width":173,"height":165}},
		"C":{"C":{"x":173.5,"y":908.5,"width":127,"height":127}},
		"A":{"A":{"x":1725.5,"y":192.5,"width":215,"height":205}},
		"B":{"B":{"x":173.5,"y":200.5,"width":155,"height":147}}
	}
},
"animations":{"animation":{}}
}
```

## Drag the images into a Godot scene
This will create nodes in alphabetical order. 
![Godot drag and drop](/readme-images/godot_drop.PNG)

## Attach the script to the parent node
This script will reposition the nodes on the stage and reorder the nodes within the scene tree to match the layer order in the design file. 
![Godot add script](/readme-images/godot_script_load.PNG)

## Select the json file
After loading the file the nodes should automatically arrange.
![Godot JSON](/readme-images/godot_load_json.PNG)

## Set the desired offset.
You may notice that elements are positioned above the y axis. Set your desired offsets to position the elements correctly. Activate "Auto Y Offset" to automatically set the y axis offset based on your project window size.
![Godot Offsets](/readme-images/godot_set_offset.PNG)
