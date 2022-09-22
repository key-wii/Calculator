/// @description Pressed: Append expression to string

if (buttonPress) {
	buttonPress = false;
	
	var str = calcController.strText;
	/*var charLast = string_char_at(str, string_length(str));
	if (str == "" || charLast == "+" || charLast == "-" || charLast == "*" || charLast == "/") exit;*/
	if (ds_list_size(calcController.exprList) > 0) exit;
	
	if (calcController.result) calcController.result = false;
	
	with (calcController) {
		strText = strText + other.strText;
		ds_list_add(exprList, other.strText);
		lastPressed = EXPR;
		
		ds_list_add(intsList, intCurrent);
		intCurrent = 0;
	}
	
	calcController.strText = str + strText;
}