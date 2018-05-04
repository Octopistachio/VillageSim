var elementPicker = random_range(0, 100)
var element_obj = pointer_null;

if(elementPicker < 10)
			element_obj = oTree;
		else if(elementPicker < 15)
			element_obj = oRock;
			
return element_obj