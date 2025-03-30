/// @description Insert description here
// You can write your code in this editor

score_height = 40 + y;
high_height = score_height + 40;
final_score = "FINAL SCORE:";
high_score = "HIGH SCORE:";

if(global.overall_score > global.highscore){
	high_score = "!!!NEW HIGH SCORE!!!";
	global.highscore = global.overall_score;
	highscore_save();
}