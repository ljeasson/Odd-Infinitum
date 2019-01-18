/// Basic Missile

if (global.missile_count > 0)
{
    // Create Effect
    effect_create_above(ef_smoke,x+48,y+24,0,c_white);    
    
    // Play Missile sound
    audio_play_sound(snd_Player_Missile, 1, false);
    
    // Create instance of missile moving to the right with a speed of 6
    var missile = instance_create(x+48,y+24,obj_Missile);
    missile.direction = 0;
    missile.speed = 6;
        
    // Decrease overheat mount by 30
    global.overheat -= 30;
        
    // Decrease missile count by 1
    global.missile_count -= 1;

    // Increase Overall Missile Count
    obj_Player.Missiles += 1;
}
