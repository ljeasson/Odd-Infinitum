/// Basic Missile

// Create Effect
effect_create_above(ef_smoke,X+48,Y+24,0,c_white);    
    
// Play Missile sound
audio_play_sound(snd_Player_Missile, 1, false);
    
// Create instance of missile moving to the right with a speed of 6
var missile = instance_create(X+48,Y+24,obj_Missile);
missile.direction = 0;
missile.speed = 6;
        
// Decrease overheat mount by 30
remote_energy -= 30;
        
// Decrease missile count by 1
remote_missile_count -= 1;
