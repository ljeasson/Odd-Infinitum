// fire_alt_laser()
// Fires alternative laser

X = argument0;
Y = argument1;

// If laser is fired with no health, take damage
if (global.overheat <= 0)
{
    player_take_damage_heat(5);
}

if (key_alt_laser)
{
    // Basic Laser
    if (global.alt_laser == "basic_laser")
    {
        // Play Laser sound
        var pitch = audio_sound_pitch(snd_Player_Laser, random_range(0.85,1.15));
        audio_play_sound(snd_Player_Laser, pitch, false);
    
        // Create Spark Effect
        //effect_create_above(ef_spark,x+48,y+24,1,c_aqua);
        instance_create(X,Y,obj_aqua_spark);
        
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
    
        // Decrease overheat amount by 20
        global.overheat -= 20;
    }

    // Triple shot
    if (global.alt_laser == "triple_shot")
    {
        // Create 3 triple shot instances
        shot1 = instance_create(X+48,Y+24,obj_Triple_Shot);
        shot1.direction = 0;
        shot1.speed = 8;
    
        shot2 = instance_create(X+48,Y+24,obj_Triple_Shot);
        shot2.direction = 30;
        shot2.speed = 8;
    
        shot3 = instance_create(X+48,Y+24,obj_Triple_Shot);
        shot3.direction = -30;
        shot3.speed = 8;
    
        // Decrease overheat by 25
        global.overheat -= 25;
    }
    
    // Giant Laser
    if (global.alt_laser = "giant_laser")
    {
        // Create giant laser instance
        instance_create(X+48,Y+24,obj_Giant_Laser);
        
        // Decrease overheat by 50
        global.overheat -= 50;
    }
}


if (key_alt_laser_hold)
{
    // Rapid fire
    if (global.alt_laser == "rapid_fire")
    {
        if (fire_again)
        {
            // Create rapid fire instance
            instance_create(X+48,Y+24,obj_Rapid_Fire);
        
            // Decrease overheat by 5
            global.overheat -= 5;
        
            // Disable fire_again
            fire_again = false
            alarm[1] = global.shot_timer;
        }
    }
}
