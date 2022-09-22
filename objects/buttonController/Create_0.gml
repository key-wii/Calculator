/// @description 

var num = 7;
var space = 16;
var xMod = 80 + space;
var yMod = 80 + space;
var xx = space;
var yy = space;

for (var i = 0; i < 16; i++) {
	var button = instance_create_layer(x + xx, y + yy, "Calc", buttonExpression);
	button.xx = 20;
	switch (i) {
		case 3:
			with (button) instance_change(buttonAC, false);
			button.strText = "AC";
			button.xx = 0;
			button.yy = 0;
			break;
		case 7: 
			with (button) instance_change(buttonEquals, false);
			button.strText = "=";
			break;
		case 13: button.strText = "+"; break;
		case 14: button.strText = "-"; break;
		case 11: button.strText = "*"; break;
		case 15: button.strText = "/"; break;
		case 12:
			with (button) instance_change(buttonInt, false);
			button.strText = string("0");
			break;
		/*case 7:
			with (button) instance_change(buttonDEL, false);
			button.strText = "DEL";
			button.fntText = fntButtonSmall;
			button.xx = 5;
			button.yy = 20;
			break;
		case 11: 
			with (button) instance_change(buttonEquals, false);
			button.strText = "=";
			break;
		case 12: button.strText = "+"; break;
		case 13: button.strText = "-"; break;
		case 14: button.strText = "*"; break;
		case 15: button.strText = "/"; break;*/
		default:
			with (button) instance_change(buttonInt, false);
			button.strText = string(num);
			num++;
			if (num mod 3 == 1) num -= 6;
			break;
	}
	xx += xMod;
	if (i mod 4 == 3) {
		xx = space;
		yy += yMod;
	}
}