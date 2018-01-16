max_height = y - 20;
min_height = y;

vspd = random_range(5, 10);
hspd = random_range(5, 10);

if(round(random(1)) == 1) hspd *= -1;

reachedApex = false;

image_xscale *= random_range(1, 3);
image_yscale *= random_range(1, 3);

hspeed = hspd;