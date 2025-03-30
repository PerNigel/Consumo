/// @description Level, Lives and Score
// You can write your code in this editor

// Level
if(level>max_lvl){
	level = 0;
	pounds += irandom_range(25,50);
	max_lvl+=lvl_inc;
	lvl++;
	audio_play_sound(snd_level,3,false);
	if(lvl > 5){
		lvl_inc*=0.80;
		//obj_room.p_lives++;
		lvl = 0;
	}
}

// Movement decrease
if(movement_spd>=3){
	movement_spd=(-pounds/200)+8;
}
if(movement_spd<3){
	movement_spd=3;
}

if(level<0){
	scr_lives();
	level = 0;
}

scr_movement()

// Lives
if(obj_room.p_lives<1){
	game_over();
}

// what the fuck?
if(bounce>0){
	direction = self.direction + choose(-45, -25, -15, 15, 25, 45);
	speed = sign(movement_spd) * -10;
	bounce--;
}