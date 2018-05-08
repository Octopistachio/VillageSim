/// @description Insert description here
// You can write your code in this editor

draw_sprite(sWaterTile, 0, x, y);

//Water on bottom
if(place_meeting(x, y + sprite_get_height(sGrassTile), oWaterTile))
	draw_sprite(sEdgeTile, 0, x, y);

//GrassSpriteChanger();
draw_self();