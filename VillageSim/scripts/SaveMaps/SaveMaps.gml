///@description Add all maps to the main map, and save the main to a file

ds_map_add_map(global.level_ds_map, "tiles", global.tiles_ds_map); //Add the tiles map to the level map
ds_map_add_map(global.level_ds_map, "natural elements", global.tiles_ds_map); //Add the tiles map to the level map
ds_map_add_list(global.level_ds_map, "inventory", global.inventory_ds_list); //Add the inventory to the level map
ds_map_secure_save(global.level_ds_map, working_directory + "level.dat"); //Save the file