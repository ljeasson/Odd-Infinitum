// missile_regain()
// Replenishes missile at the expense of some health

X = argument0;
Y = argument1;

// Play Sound
audio_play_sound(snd_Missile_Regain, 1, false);

// Create Effect
//effect_create_above(ef_ellipse,x+24,y+16,1,c_ltgray);    
var ring = instance_create(x,y,obj_Ring);
ring.object_to_follow = obj_Player_Remote;

// Lose 20 health points and gain 1 missile
remote_health -= 20;
remote_missile_count += 1;

