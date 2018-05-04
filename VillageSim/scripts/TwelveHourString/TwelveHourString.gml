if(global.hour > 12)
	return string(global.hour - 12);
else if(global.hour == 0)
	return string(12);
else
	return string(global.hour)