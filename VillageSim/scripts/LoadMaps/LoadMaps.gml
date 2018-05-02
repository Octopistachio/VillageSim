///@description Load the main map from the file, and call the other maps from

global.level_ds_map = ds_map_secure_load(working_directory + "level.dat"); //Load the level from the file
global.tiles_ds_map = ds_map_find_value(global.level_ds_map, "tiles"); //Load the tiles map from level
global.natural_elements_ds_map = ds_map_find_value(global.level_ds_map, "natural elements"); //Load the natural elements map from level
global.inventory_ds_list = ds_map_find_value(global.level_ds_map, "inventory"); //Load the inventory map from level