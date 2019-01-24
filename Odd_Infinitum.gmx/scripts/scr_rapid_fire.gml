/// Rapid Fire

// Play Laser sound
audio_play_sound(snd_Rapid_Fire, 2, false);

// Create Spark Effect
instance_create(x,y,obj_yellow_spark);

// Create rapid fire instance
instance_create(x+48,y+24,obj_Rapid_Fire_controller);
        
// Decrease overheat by 5
global.overheat -= 20;

