/// @description DrawCorner(obj, corner_obj);
/// @function DrawCorner
/// @param obj
/// @param corner_obj

var obj = argument0; //The object to add corners to
var corner_obj = argument1; //The corner object

var space = global.tileSize;

var left_check = x - space;
var right_check = x + space;
var top_check = y - space;
var bottom_check = y + space;

	
//Tile on bottom and right
if(instance_place(right_check, bottom_check, obj) &&
   !instance_place(x, bottom_check, obj)) {
		var inst = instance_create_depth(x, y+space*2, depth-1, corner_obj);
		inst.image_angle = 90
}

//Tile on bottom and left
if(instance_place(left_check, bottom_check, obj) &&
   !instance_place(x, bottom_check, obj)) {
		var inst = instance_create_depth(x+space, y+space*2, depth-1, corner_obj);
		inst.image_angle = 180
}

//Tile on top and left
if(instance_place(left_check, top_check, obj) &&
   !instance_place(x, top_check, obj)) {
		var inst = instance_create_depth(x+space, y-space, depth-1, corner_obj);
		inst.image_angle = 270;
}

//Tile on top and right
if(instance_place(right_check, top_check, obj) &&
   !instance_place(x, top_check, obj)) {
		var inst = instance_create_depth(x, y-space, depth-1, corner_obj);
		inst.image_angle = 0;
}
		
			
		