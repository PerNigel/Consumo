// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_puffer_spwn(){
	var puffer_enemy = obj_puffer;
	
	// Top and Bottom
	with(instance_create_layer(top_bottom,choose(0,768),"Food",puffer_enemy)){
		if(y<=0) direction = 270;
		if(y>=768) direction = 90		
		image_angle = direction;
	}

	// Left and Right
	with(instance_create_layer(choose(0,768),left_right,"Food",puffer_enemy)){
		if(x<=0) direction = 0;
		if(x>=768) direction = 180;
		image_angle = direction;
	}
	
	alarm[3] = room_speed * puffer_spawn_rate;
}

function scr_rot_spwn(){
	var rot_enemy = obj_apple_rot;
	
	// Top and Bottom
	with(instance_create_layer(top_bottom,choose(0,768),"Food",rot_enemy)){
		if(y<=0) direction = 270;
		if(y>=768) direction = 90
	}

	// Left and Right
	with(instance_create_layer(choose(0,768),left_right,"Food",rot_enemy)){
		if(x<=0) direction = 0;
		if(x>=768) direction = 180;
	}
	
	alarm[1] = room_speed * neg_spawn_rate;
}

function scr_food_spwn(){
	// Top and Bottom
	with(instance_create_layer(top_bottom,choose(0,768),"Food",obj_apple)){
		if(y<=0) direction = 270;
		if(y>=768) direction = 90
	}
	// Left and Right
	with(instance_create_layer(choose(0,768),left_right,"Food",obj_apple)){
		if(x<=0) direction = 0;
		if(x>=768) direction = 180;
	}
}