///@description Creates the town for the first time

terrainTileSize = global.tileSize; //Size of each tile
terrainTilesWide = room_width/terrainTileSize; //How many tiles wide the room is
terrainTilesHigh = room_height/terrainTileSize; //How many tiles high the room is

//Arrays for the coords for each tile
terrainGridTopRight_x = ds_grid_create(terrainTilesWide, terrainTilesHigh)
terrainGridTopRight_y = ds_grid_create(terrainTilesWide, terrainTilesHigh)
terrainGridBottomLeft_x = ds_grid_create(terrainTilesWide, terrainTilesHigh)
terrainGridBottomLeft_y = ds_grid_create(terrainTilesWide, terrainTilesHigh)

terrainGrid = ds_grid_create(terrainTilesWide, terrainTilesHigh); //The grid itself

//Add the coords to the tile arrays
var counter = 0;
for(var i = 0; i < terrainTilesHigh; i++) //For every column
	for(var j = 0; j < terrainTilesWide; j++) { //For every row


		ds_grid_add(terrainGridTopRight_x, i, j, terrainTileSize * (j+1)); //Make the top right x of the cell to the width * the row + 1
		ds_grid_add(terrainGridTopRight_y, i, j, terrainTileSize * (i+1)); //Make the top right y of the cell to the width * the column + 1
			
		ds_grid_add(terrainGridBottomLeft_x, i, j, terrainTileSize * j); //Make the bottom left x of the cell to the width * the row
		ds_grid_add(terrainGridBottomLeft_y, i, j, terrainTileSize * i);; //Make the bottom left y of the cell to the width * the column
			
		ds_grid_add(terrainGrid, i, j, counter);	
		counter++;
	}