/// @description Insert description here
// You can write your code in this editor

draw_self();
scr_flash();


var width_half = obj_room.width_half
var width = obj_room.width_half * 2;

var pc = (level/max_lvl) * 100;
	
draw_healthbar(width_half-50,10,width_half+50,30,pc,c_black,c_red,c_green,0,true,true);

with(obj_room){
	fin_score = obj_player.pounds;
}

// Debug
//draw_text(width_half,10,level);	
//draw_text(width_half,20,max_lvl);	
//draw_text(width_half,30,pc);	
	
//draw_text(width-50,0,"Pounds");	
//draw_text(width-50,10,pounds);

//draw_text(width-50,30,"Bounce");	
//draw_text(width-50,40,bounce);	

//draw_text(5,30,"Level");	
//draw_text(5,40,lvl);

//draw_text(5,60,"Speed");	
//draw_text(5,70,movement_spd);
	

