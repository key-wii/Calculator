/// @description Check if Pressed

var inRange = mouse_x >= x && mouse_x <= x + w && mouse_y >= y && mouse_y <= y + h;
if (inRange && mouse_check_button_pressed(mb_left)) buttonPress = true;

if (inRange && mouse_check_button(mb_left) && buttonPress) buttonDown = true;
else if (!mouse_check_button(mb_left)) buttonDown = false;

if (inRange) buttonOver = true;
else buttonOver = false;