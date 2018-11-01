// fire_missile()
// Fires a missile

if (key_missile and global.missile_count > 0)
{
    // Normal Missile
    if (global.missile == "basic_missile")
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
    }
    
    // Homing Missile   
    if (global.missile = "homing_missile")
    {
        // Create Effect
        effect_create_above(ef_smoke,x+48,y+24,0,c_white);    
    
        // Create instance of homing missile
        instance_create(x+48,y+24,obj_Homing_Missile);
        
        // Decrease overheat mount by 35
        global.overheat -= 35;
        
        // Decrease missile count by 1
        global.missile_count -= 1;
    }
    
    // Missile Barrage
    if (global.missile = "missile_barrage" && global.missile_count >= 3)
    {
        // Create Effect
        effect_create_above(ef_smoke,x+48,y+24,0,c_white);    
    
        // Create instance of missile barrage
        instance_create(x+48,y+24,obj_Missile_Barrage);
        
        // Decrease overheat mount by 40
        global.overheat -= 40;
        
        // Decrease missile count by 3
        global.missile_count -= 3;  
    }  
}
