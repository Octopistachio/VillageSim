///@description Find what tile the player is in currently

//Local variables for the terrainGrid coordinates
var topRight_x = oTownGeneration.terrainGridTopRight_x;
var topRight_y = oTownGeneration.terrainGridTopRight_y;
			
var bottomLeft_x = oTownGeneration.terrainGridBottomLeft_x;
var bottomLeft_y = oTownGeneration.terrainGridBottomLeft_y;

for(var i = 0; i < oTownGeneration.terrainTilesWide; i++) //For each row
		for(var j = 0; j < oTownGeneration.terrainTilesHigh; j++) { //For each column

			if(oPlayer.x <= ds_grid_get(topRight_x, i, j) && oPlayer.x > ds_grid_get(bottomLeft_x, i, j) &&
			   oPlayer.y <= ds_grid_get(topRight_y, i, j) && oPlayer.y > ds_grid_get(bottomLeft_y, i, j)) {
				
				currentTileRow = i; //Set the current row
				currentTileColumn = j; //Set the current tile
			
			}
		}