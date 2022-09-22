/// @description Pressed: Remove last input from string

if (buttonPress) {
	var str = calcController.strText;
	calcController.strText = string_delete(str, string_length(str), 1);
	if (calcController.strText == "") {
		calcController.strText = "0";
		result = true;
	}
	
	buttonPress = false;
}