/// @description Insert description here
// You can write your code in this editor

timer--;
if(timer < 0){
	instance_create_layer(x,y,layer,obj_sumo);
	timer = 5 * room_speed;
}

if(restart)
	game_restart();