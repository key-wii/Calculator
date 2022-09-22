/// @description 

draw_set_halign(fa_right);
draw_set_font(fntCalc);
var col = colText;
if (result) col = colTextResult;
draw_set_color(col);

draw_text(x, y, strText);

draw_set_halign(fa_left);