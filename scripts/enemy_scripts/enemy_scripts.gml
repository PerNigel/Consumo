// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_puffer_angle(){
	if(direction == 180){
	image_xscale = -1;
	}
	if(direction == 90){
		sprite_index = 1;
		if(direction == 270){
			image_yscale = -1;
		}
	}
}