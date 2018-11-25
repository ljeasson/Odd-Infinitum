/// Missile Barrage

// Create Effect
effect_create_above(ef_smoke,X+48,Y+24,0,c_white);    
    
// Create instance of missile barrage
instance_create(X+48,Y+24,obj_Missile_Barrage);
        
// Decrease overheat mount by 40
remote_energy -= 40;
        
// Decrease missile count by 3
remote_missile_count -= 3; 
