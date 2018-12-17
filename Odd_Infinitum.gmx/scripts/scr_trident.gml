/// Triple Shot

// Create 3 triple shot instances
shot1 = instance_create(x+48,y+24-16,obj_Trident_Laser);
shot1.direction = 0;
shot1.speed = 8;
    
shot2 = instance_create(x+56,y+24,obj_Trident_Laser);
shot2.direction = 0;
shot2.speed = 8;
    
shot3 = instance_create(x+48,y+24+16,obj_Trident_Laser);
shot3.direction = 0;
shot3.speed = 8;
    
// Decrease overheat by 25
global.overheat -= 30;
