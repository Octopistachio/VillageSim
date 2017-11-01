/// @description ChooseWater(row, col, row_max, col_max);
/// @function ChooseWater
/// @return boolean
/// @param row
/// @param col
/// @param row_max
/// @param col_max

var row = argument0; //The current row the array is looping in
var col = argument1; //The current col the array is looping in
var row_max = argument2; //The max row
var col_max = argument3; //The max col

var waterBorder_min = 3; //Min number of water tiles along the edge
var waterBorder_max = 5; //Max number of water tiles along the edge
var waterBorder = round(random_range(waterBorder_min, waterBorder_max)); //Randomly pick a number of water tiles

if(0 <= row && row < waterBorder) return true; //Spawn water on the top
else if(row_max - waterBorder <= row && row < row_max) return true; //Spawn water on the bottom

if(0 <= col && col < waterBorder) return true;  //Spawn water on the left
else if(col_max - waterBorder <= col && col < col_max) return true;  //Spawn water on the right

return false;