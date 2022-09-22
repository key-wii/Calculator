/// @description Pressed: Clear string

if (buttonPress) {
	with (calcController) {
		strText = "0";
		lastPressed = NA;
		intCurrent = 0;
		result = true;
		ds_list_clear(intsList);
		ds_list_clear(exprList);
	}
	
	buttonPress = false;
}