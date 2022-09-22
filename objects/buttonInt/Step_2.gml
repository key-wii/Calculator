/// @description Pressed: Append int to string

if (buttonPress) {
	with (calcController) {
		if (result) {
			strText = "";
			result = false;
			intCurrent = 0;
		}
	
		var str = other.strText;
		strText = strText + str;
		intCurrent *= 10;
		intCurrent += real(str);
		lastPressed = INT;
	}
	
	buttonPress = false;
}