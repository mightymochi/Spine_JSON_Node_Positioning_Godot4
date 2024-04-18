# JSON Sprite Position for Godot 4
[Youtube walkthrough](https://www.youtube.com/watch?v=CjDQfyXRoeI)

- Quickly position and order sprites according to spine json exported with an art program. 
- This script will reposition the nodes on the stage and reorder the nodes within the scene tree to match the layer order in the design file. 
- This function will work for any node matching the names. So you could reparent the sprites to other nodes of a matching name and the script can still re-order everything. 
- If your art program does not have a json export, you can potentially save it into a format for another program that does. In this example I am using Affinity Designer. 
- If your exported json does not match the format below, you can modify the script to adjust for the changes.

## Create your design in your preferred art program.

## Export your images with the Spine or other JSON file type.
Export directly or bring your images into your project folder.

The exported json file should look something like this:

```
{"skeleton":{"images":""},
"bones":[{"name":"root"}],
"slots":[
	{"name":"11","bone":"root","attachment":"11"},
	{"name":"10","bone":"root","attachment":"10"},
	{"name":"9","bone":"root","attachment":"9"},
	{"name":"8","bone":"root","attachment":"8"},
	{"name":"7","bone":"root","attachment":"7"},
	{"name":"6","bone":"root","attachment":"6"},
	{"name":"5","bone":"root","attachment":"5"},
	{"name":"4","bone":"root","attachment":"4"},
	{"name":"3","bone":"root","attachment":"3"},
	{"name":"2","bone":"root","attachment":"2"},
	{"name":"1","bone":"root","attachment":"1"}
],
"skins":{
	"default":{
		"11":{"11":{"x":173.5,"y":182.5,"width":261,"height":261}},
		"10":{"10":{"x":173.5,"y":182.5,"width":127,"height":127}},
		"9":{"9":{"x":173.5,"y":909,"width":261,"height":262}},
		"8":{"8":{"x":173.5,"y":909.5,"width":127,"height":127}},
		"7":{"7":{"x":1725.5,"y":182.5,"width":261,"height":261}},
		"6":{"6":{"x":1725.5,"y":182.5,"width":127,"height":127}},
		"5":{"5":{"x":1725.5,"y":909,"width":261,"height":262}},
		"4":{"4":{"x":1725.5,"y":909.5,"width":127,"height":127}},
		"3":{"3":{"x":960,"y":540,"width":928,"height":928}},
		"2":{"2":{"x":960,"y":540,"width":596,"height":596}},
		"1":{"1":{"x":960,"y":540,"width":262,"height":262}}
	}
},
"animations":{"animation":{}}
}
```

## Drag the images into a Godot scene
This will typically create nodes in alphabetical order. 

## Attach the script to the parent node
This script will reposition the nodes on the stage and reorder the nodes within the scene tree to match the layer order in the design file. 

## Select the json file

## Click arrange items
This function will work for any node matching the names. So you could reparent the sprites to other nodes of a matching name and the script can still re-order everything. 
