/// @description Draw Button

var sprite = sprButton;
if (buttonDown) sprite = sprButtonDown;
else if (buttonOver) sprite = sprButtonOver;
draw_sprite_stretched(sprite, 0, x, y, w, h);
draw_set_font(fntText);
draw_set_color(colText);
draw_text(x + xx, y + yy, strText);