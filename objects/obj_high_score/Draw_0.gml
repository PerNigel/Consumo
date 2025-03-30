/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_score);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// high score.
draw_set_color(c_black);
draw_text(x,y + 5,"HIGH SCORE");
draw_set_color(c_white);
draw_text(x,y,"HIGH SCORE");

draw_set_color(c_black);
draw_text(x,y + 45,global.highscore);
draw_set_color(c_white);
draw_text(x,y + 40,global.highscore);

