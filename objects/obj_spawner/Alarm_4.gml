/// @description Sumo Spawner
// You can write your code in this editor

//Top
top_bottom = irandom_range(0,768);
left_right = irandom_range(0,768);

// Top and Bottom
with(instance_create_layer(top_bottom,choose(0,768),"Food",obj_sumo)){
	if(y<=0) direction = 270;
	if(y>=768) direction = 90
}

// Left and Right
with(instance_create_layer(choose(0,768),left_right,"Food",obj_sumo)){
	if(x<=0) direction = 0;
	if(x>=768) direction = 180;
}

alarm[4] = room_speed * sumo_spawn_rate;