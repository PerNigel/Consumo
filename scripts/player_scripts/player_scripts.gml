// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Movement
function scr_movement(){
	if(bounce<1){
		left = keyboard_check(ord("A"));
		right = keyboard_check(ord("D"));

		up = keyboard_check(ord("W"));
		down = keyboard_check(ord("S"));

		var y_movement = down - up;
		var x_movement = right - left;

		x_movement *= movement_spd;
		y_movement *= movement_spd;

		x += x_movement;
		y += y_movement;

		// Bounds
		if (x < 0) || (x > 768) || (y < 0) || (y > 768){
			x = xstart;
			y = ystart;
		}
		
		// Animations
		if(x_movement == 0) &&(y_movement == 0) sprite_index = spr_player_idle;
		if(y_movement>0){
			sprite_index = spr_player_down;
		}
		if(y_movement<0){
			sprite_index = spr_player_up;
		}
		if (x_movement != 0){
			sprite_index = spr_player_hor;
			image_xscale = sign(x_movement);
		}
	}
}

function scr_lives(){
	audio_play_sound(snd_death,5,false);
	obj_room.p_lives--;
	flash = room_speed;
	x = xstart;
	y = ystart;
}

function scr_flash(){
	if(flash > 0){
		flash--;
		shader_set(sh_white);
		draw_self();
		shader_reset();
	}
}

function game_over(){
	instance_destroy();
	room_goto(rm_game_over_menu);
	//audio_play_sound(ost_game_over,1,false);
}