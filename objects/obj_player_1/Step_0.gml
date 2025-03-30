/// @description Input, Movement, Collision
// Get Player Input
if (inv==1) player_hp=100;

key_left = keyboard_check(ord("A")); // 1
key_right = keyboard_check(ord("D")); // 1
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;
vsp=vsp+grv

if(place_meeting(x,y+1,obj_wall)) && (key_jump){
	vsp=-7;
}


//Horizontal Collision
if(place_meeting(x+hsp,y,obj_wall)){
	while(!place_meeting(x + sign(hsp),y,obj_wall)){
		x = x + sign(hsp)
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x,y+sign(vsp),obj_wall)){
		y = y + sign(vsp)
	}
	vsp = 0;
}

y = y + vsp;

// Animations
if (!place_meeting(x,y+1,obj_wall)){
	sprite_index=spr_player_jump;
	image_speed=0;
}
else{
	if (sprite_index == spr_player_jump) audio_play_sound(snd_player_footsteps,4,false);
	image_speed = 1;
	if (hsp == 0){
		sprite_index=spr_player;
	}
	else{
		// audio_play_sound(snd_player_footsteps,5,false)
		sprite_index=spr_player_run;
	}
}

if (hsp != 0) image_xscale=sign(hsp);

if(player_hp<=0){
	repeat(random_range(5,10)){
		with(instance_create_layer(x,y,layer,obj_blood)){
			direction=random_range(0,270);
			hsp=lengthdir_x(25,direction);
			vsp=lengthdir_y(20,direction-1);
			if (sign(hsp) != 0) image_xscale=sign(hsp);
		}
	}
	instance_destroy();
}


