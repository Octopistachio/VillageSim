/// @description Highlight green over tiles

draw_self(); //Draw the player

var terrainTileSize = oTownGeneration.terrainTileSize; //Local variable for the size of the tile

//Local variables of the current tile the player is in
currentCell_bottomLeft_x = ds_grid_get(oTownGeneration.terrainGridBottomLeft_x, currentTileRow, currentTileColumn);
currentCell_bottomLeft_y = ds_grid_get(oTownGeneration.terrainGridBottomLeft_y, currentTileRow, currentTileColumn);

currentCell_topRight_x = ds_grid_get(oTownGeneration.terrainGridTopRight_x, currentTileRow, currentTileColumn);
currentCell_topRight_y = ds_grid_get(oTownGeneration.terrainGridTopRight_y, currentTileRow, currentTileColumn);

if(sprite_index == sPlayerWalkUp) { //If the player is looking up
	currentCell_bottomLeft_y -= terrainTileSize;
	currentCell_topRight_y -= terrainTileSize;
}
else if(sprite_index == sPlayerWalkDown) { //If the player is looking down
	currentCell_bottomLeft_y += terrainTileSize;
	currentCell_topRight_y += terrainTileSize;
}
else if(sprite_index == sPlayerWalkSide) { //If the player is looking left/right
	
	if(image_xscale < 0) { //If the player is looking left
		currentCell_bottomLeft_x -= terrainTileSize;
		currentCell_topRight_x -= terrainTileSize;		
	}
	else { //If the player is looking right
		currentCell_bottomLeft_x += terrainTileSize;
		currentCell_topRight_x += terrainTileSize;	
	}
	
}

draw_set_alpha(0.5);
draw_set_color(c_green);
draw_rectangle(currentCell_bottomLeft_x, currentCell_bottomLeft_y, currentCell_topRight_x, currentCell_topRight_y, false);