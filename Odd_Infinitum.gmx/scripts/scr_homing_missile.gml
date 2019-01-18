/// Homing Missile

if (global.missile_count > 0)
{
    // Create Effect
    effect_create_above(ef_smoke,x+48,y+24,0,c_white);    
    
    // Create instance of homing missile
    instance_create(x+48,y+24,obj_Homing_Missile);
        
    // Decrease overheat mount by 35
    global.overheat -= 35;
        
    // Decrease missile count by 1
    global.missile_count -= 1;

    // Increase Overall Missile Count
    obj_Player.Missiles += 1;
}
