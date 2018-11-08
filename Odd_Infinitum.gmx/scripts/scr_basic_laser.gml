/// Basic Laser
    
// Play Laser sound
var pitch = audio_sound_pitch(snd_Player_Laser, random_range(0.85,1.15));
audio_play_sound(snd_Player_Laser, pitch, false);
            
// Create Spark Effect
//effect_create_above(ef_spark,x+48,y+24,1,c_aqua);
var spark = instance_create(X,Y,obj_aqua_spark);
spark.x = X+48;
spark.y = Y+24;
            
// Create instance of laser moving to the right with a speed of 8
if (player_dodge == 0)
{
    var laser = instance_create(X+48,Y+24,obj_Laser);
    laser.direction = 0;
    laser.speed = global.laser_speed;
}
else
{
    var laser = instance_create(X+48,Y+24,obj_Laser_Short_Range);
    laser.direction = 0;
    laser.speed = global.laser_speed;
}
            
// Decrease energy amount by 20
global.overheat -= 20;
