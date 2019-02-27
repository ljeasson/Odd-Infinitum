/// Missile Barrage

if (global.missile_count >= 3)
{
    // Create Effect
    effect_create_above(ef_smoke,x+48,y+24,0,c_white);    
    
    // Create 3 instances of misiles
    var missile_top = instance_create(x+48,y+24,obj_Missile);
    missile_top.image_angle = 15;
    missile_top.direction = 15;
    missile_top.speed = 6;
    
    var missile_middle = instance_create(x+48,y+24,obj_Missile);
    missile_middle.direction = 0;
    missile_middle.speed = 6;
    
    var missile_bottom = instance_create(x+48,y+24,obj_Missile);
    missile_bottom.image_angle = -15;
    missile_bottom.direction = -15;
    missile_bottom.speed = 6;
        
    // Decrease overheat mount by 40
    global.overheat -= 40;
        
    // Decrease missile count by 3
    global.missile_count -= 3; 

    // Increase Overall Missile Count
    obj_Player.Missiles += 3;
}
