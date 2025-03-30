/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_score);

draw_set_halign(fa_middle);
draw_set_valign(fa_center);

var middle = room_width / 2;
var top = 60;

draw_set_color(c_black);
draw_text(middle, top + 5, global.overall_score);
draw_set_color(c_white);
draw_text(middle, top, global.overall_score);



