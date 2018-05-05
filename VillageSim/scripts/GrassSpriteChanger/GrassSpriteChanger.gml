var left_check = x - 1;
var right_check = x + sprite_get_width(sGrassTile);
var top_check = y - 1
var bottom_check = y + sprite_get_height(sGrassTile);

//Water on each side
if(place_meeting(x, bottom_check, oWaterTile) &&
   place_meeting(x, top_check, oWaterTile) &&
   place_meeting(left_check, y, oWaterTile) &&
   place_meeting(right_check, y, oWaterTile)) sprite_index = sGrassTileRound;

///Water on three sides

//Water on bottom, top, and left
else if(place_meeting(x, bottom_check, oWaterTile) &&
		place_meeting(x, top_check, oWaterTile) &&
		place_meeting(left_check, y, oWaterTile)) sprite_index = sGrassTileTLBL;

//Water on bottom, top, and right
else if(place_meeting(x, bottom_check, oWaterTile) &&
		place_meeting(x, top_check, oWaterTile) &&
		place_meeting(right_check, y, oWaterTile)) sprite_index = sGrassTileTRBR;

//Water on bottom, left, and right
else if(place_meeting(x, bottom_check, oWaterTile) &&
		place_meeting(left_check, y, oWaterTile) &&
		place_meeting(right_check, y, oWaterTile)) sprite_index = sGrassTileBRBL;

//Water on top, left, and right
else if(place_meeting(x, top_check, oWaterTile) &&
		place_meeting(left_check, y, oWaterTile) &&
		place_meeting(right_check, y, oWaterTile)) sprite_index = sGrassTileTLTR;

///Water on two sides

//Water on top and right
else if(place_meeting(x, top_check, oWaterTile) &&
		place_meeting(right_check, y, oWaterTile)) sprite_index = sGrassTileTR;
		
//Water on bottom and right
else if(place_meeting(x, bottom_check, oWaterTile) &&
		place_meeting(right_check, y, oWaterTile)) sprite_index = sGrassTileBR;
		
//Water on top and left
else if(place_meeting(x, top_check, oWaterTile) &&
		place_meeting(left_check, y, oWaterTile)) sprite_index = sGrassTileTL;
		
//Water on bottom and left
else if(place_meeting(x, bottom_check, oWaterTile) &&
		place_meeting(left_check, y, oWaterTile)) sprite_index = sGrassTileBL;