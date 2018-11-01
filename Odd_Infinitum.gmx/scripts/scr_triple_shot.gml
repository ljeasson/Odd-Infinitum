/// Triple Shot

// Create 3 triple shot instances
shot1 = instance_create(X+48,Y+24,obj_Triple_Shot);
shot1.direction = 0;
shot1.speed = 8;
    
shot2 = instance_create(X+48,Y+24,obj_Triple_Shot);
shot2.direction = 30;
shot2.speed = 8;
    
shot3 = instance_create(X+48,Y+24,obj_Triple_Shot);
shot3.direction = -30;
shot3.speed = 8;
    
// Decrease overheat by 25
global.overheat -= 25;
