/// Homing Missile

// Create Effect
effect_create_above(ef_smoke,X+48,Y+24,0,c_white);    
    
// Create instance of homing missile
instance_create(X+48,Y+24,obj_Homing_Missile);
        
// Decrease overheat mount by 35
remote_energy -= 35;
        
// Decrease missile count by 1
remote_missile_count -= 1;
