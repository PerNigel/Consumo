/// @description Insert description here
// You can write your code in this editor

if(flash<1){
	with(other){
		obj_player.pounds += pts;
		obj_player.level += pts;
		if(instance_exists(obj_spawner)){ 
			instance_destroy();
		}
		if(pts > 0){
			global.overall_score +=pts;
		}
		audio_play_sound(sound,1,false);
	}
}