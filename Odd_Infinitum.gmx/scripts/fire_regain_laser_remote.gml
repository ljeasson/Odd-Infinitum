// fire_regain_laser()
// Fires a Regain Laser to replenish health

X = argument0;
Y = argument1;

// Play Laser sound
var pitch = audio_sound_pitch(snd_Player_Laser_Regain, random_range(0.85,1.15));
audio_play_sound(snd_Player_Laser_Regain, pitch, false);    

// Create Spark Effect
//effect_create_above(ef_spark,x+48,y+24,1,c_blue);
var spark = instance_create(X,Y,obj_blue_spark);
spark.x = X+48;
spark.y = Y+24;
    
// Create instance of laser moving to the right with a speed of 8
var laser = instance_create(X+48,Y+24,obj_Regain_Laser);
laser.direction = 0;
laser.speed = global.laser_speed;
    
// Decrease overheat amount by 20
remote_energy -= 15;
    
// If laser is fired with no energy, take damage
if (remote_energy <= 0) health -= 2;
