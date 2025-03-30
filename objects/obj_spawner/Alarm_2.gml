/// @description Spawn Increase Rate
// You can write your code in this editor


neg_spawn_win-=0.2;
puffer_spawn_win-=0.2;
if(neg_spawn_win>=0.5){
	alarm[2] = room_speed * increase_timer;
}
