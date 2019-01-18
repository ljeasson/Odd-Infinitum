/// Missile Barrage

if (global.missile_count >= 3)
{
    // Create Effect
    effect_create_above(ef_smoke,x+48,y+24,0,c_white);    
    
    // Create instance of missile barrage
    instance_create(x+48,y+24,obj_Missile_Barrage);
        
    // Decrease overheat mount by 40
    global.overheat -= 40;
        
    // Decrease missile count by 3
    global.missile_count -= 3; 

    // Increase Overall Missile Count
    obj_Player.Missiles += 3;
}
