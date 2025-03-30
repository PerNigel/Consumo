/// @description shader
// You can write your code in this editor

draw_self();

if(flash > 0){
	flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}


// Blood
if (flash > 0 ){
	with(instance_create_layer(x,y,"Enemy",obj_blood)){
		direction=other.hitfrom;
		hsp=lengthdir_x(10,direction);
		vsp=lengthdir_y(5,direction-1);
		if (sign(hsp) != 0) image_xscale=sign(hsp);
	}
}


// Health
draw_healthbar(100,100,500,200,(player_hp/hp_max)*100,c_black,c_red,c_lime,0,true,true)
