/// Rapid Fire

// Play Laser sound
audio_play_sound(snd_Seeker_Laser, 2, false);

// Create Spark Effect
instance_create(x,y,obj_purple_spark);
    
// Create rapid fire instance
instance_create(x+48,y+24,obj_Seeker_Shot);
        
// Decrease overheat by 10
global.overheat -= 10;
