/// @description Splash(size);
/// @function Splash
///
/// @param size

var size = argument0 //The size of the splash

if(typeof(size) != "number") show_error("Argument is not a real number!", true);

for(var i = 0; i < (size + 1) * 2; i++) {
	
	var x_rand = random_range(-15, 15);
	var y_rand = random_range(-15, 15);
	
	var splash_inst = instance_create_depth(self.x + x_rand, self.y + y_rand, -99, oSplash_Particle);
}