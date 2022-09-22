/// @description Pressed: Calculate

if (buttonPress) {
	with (calcController) {
		ds_list_add(intsList, intCurrent);
		if (lastPressed == EXPR) ds_list_delete(exprList, ds_list_size(exprList));
	
		for (var i = 0; i < ds_list_size(exprList); i++) {
			var mult = (exprList[| i] == "*");
			var divi = (exprList[| i] == "/");
				 if (mult) intsList[| i] = intsList[| i] * intsList[| i + 1];
			else if (divi) intsList[| i] = intsList[| i] / intsList[| i + 1];
			if (mult || divi) {
				ds_list_delete(exprList, i);
				i--;
			}
		}
		
		for (var i = 0; i < ds_list_size(exprList); i++) {
			var add = (exprList[| i] == "+");
			var sub = (exprList[| i] == "-");
				 if (add) intsList[| i] = intsList[| i] + intsList[| i + 1];
			else if (sub) intsList[| i] = intsList[| i] - intsList[| i + 1];
			if (add || sub) {
				ds_list_delete(exprList, i);
				i--;
			}
		}
	
		var total = intsList[| 0];
		strText = string(total);
	
		result = true;
		intCurrent = total;
		ds_list_clear(intsList);
		ds_list_clear(exprList);
	}
	
	buttonPress = false;
}

/*if (buttonPress) {
	var fullStr = calcController.strText;
	nums = ds_list_create();
	var i = 0;
	while (fullStr != "") {
		nums[| i] = string_digits(calcController.strText);
		var numStr = string(nums[| i]);
		show_debug_message(numStr);
		string_delete(fullStr, 0, string_length(numStr));
		i++;
	}
	
	var total = 0;
	calcController.strText = string(total);
	calcController.result = true;
	buttonPress = false;
	ds_list_destroy(nums);
}