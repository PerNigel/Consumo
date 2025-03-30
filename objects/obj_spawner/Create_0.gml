/// @description Food Spawn
// You can write your code in this editor

// Variables
food_spawn_win = 0.5;
neg_spawn_win = 1.2;
puffer_spawn_win = 5;
sumo_spawn_win = 10;

increase_timer = 15;
time = increase_timer;//
time*=room_speed; //

food_spawn_rate = random_range(food_spawn_win,food_spawn_win*2);
neg_spawn_rate = random_range(neg_spawn_win,neg_spawn_win*2)
puffer_spawn_rate = random_range(puffer_spawn_win,puffer_spawn_win*2);
sumo_spawn_rate = random_range(sumo_spawn_win, sumo_spawn_win*2)

top_bottom = irandom_range(0,768);
left_right = irandom_range(0,768);

scr_food_spwn();
scr_rot_spwn();
scr_puffer_spwn();


alarm[0] = room_speed * food_spawn_rate;
alarm[1] = room_speed * neg_spawn_rate;
alarm[2] = room_speed * increase_timer;
alarm[3] = room_speed * puffer_spawn_rate;
alarm[4] = room_speed * sumo_spawn_rate;