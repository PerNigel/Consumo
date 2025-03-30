/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_score);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// current score.
draw_set_color(c_black);
draw_text(x,y+5,final_score);
draw_set_color(c_white);
draw_text(x,y,final_score);

draw_set_color(c_black);
draw_text(x,score_height + 5,global.overall_score);
draw_set_color(c_white);
draw_text(x,score_height,global.overall_score);

// high score.
draw_set_color(c_black);
draw_text(x,high_height + 5,high_score);
draw_set_color(c_white);
draw_text(x,high_height,high_score);

draw_set_color(c_black);
draw_text(x,high_height + 45,global.highscore);
draw_set_color(c_white);
draw_text(x,high_height + 40,global.highscore);

