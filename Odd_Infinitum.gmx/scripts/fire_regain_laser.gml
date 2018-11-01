// fire_regain_laser()
// Fires a Regain Laser to replenish health

X = argument0;
Y = argument1;

if (key_laser) 
{
    // Play Laser sound
    var pitch = audio_sound_pitch(snd_Player_Laser_Regain, random_range(0.85,1.15));
    audio_play_sound(snd_Player_Laser_Regain, pitch, false);    

    // Create Spark Effect
    //effect_create_above(ef_spark,x+48,y+24,1,c_blue);
    instance_create(X,Y,obj_blue_spark);
    
    // Create instance of laser moving to the right with a speed of 8
    var laser = instance_create(X+48,Y+24,obj_Regain_Laser);
    laser.direction = 0;
    laser.speed = global.laser_speed;
    
    // Decrease overheat amount by 20
    global.overheat -= 15;
    
    // If laser is fired with no health, take damage
    if (global.overheat <= 0)
    {
        health -= 2;
    }
}
