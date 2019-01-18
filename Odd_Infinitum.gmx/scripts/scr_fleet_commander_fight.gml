// Combat

if (obj_Fleet_Commander_Daemeon.orb_count < 3 && !attack_lock)
{
    // Add Missile Attack
    instance_create(obj_Fleet_Commander_Daemeon.x-112, 
                    obj_Fleet_Commander_Daemeon.y,
                    obj_Fleet_Commander_Missile);
        
    // Lock Attack Window
    attack_lock = true;
    // Set Timer for When to Attack Again
    alarm[0] = 480;
}

if (obj_Fleet_Commander_Daemeon.orb_count < 2 && !attack_lock_2)
{
    // Add Wave Beam Attack
    instance_create(obj_Fleet_Commander_Daemeon.x-112, 
                    obj_Fleet_Commander_Daemeon.y,
                    obj_Wave_Shot_Controller);
                        
    // Lock Attack Window
    attack_lock_2 = true;
    // Set Timer for When to Attack Again
    alarm[3] = 960;
}

if (obj_Fleet_Commander_Daemeon.orb_count < 1 && !attack_lock_3)
{
    // Increase Speed
    path_speed = 4;    

    // Add Laser Attack
    var attack_choice = irandom(3);
    
    switch(attack_choice)
    {
        case 0:
            // Trident Laser
            // Upper Laser
            var attack_U = instance_create(x+16,y-32,obj_Red_Laser);
            attack_U.direction = 180;
            attack_U.speed = 8;
    
            // Center Laser
            var attack_C = instance_create(x,y,obj_Red_Laser);
            attack_C.direction = 180;
            attack_C.speed = 8;
    
            // Lower Laser
            var attack_D = instance_create(x+16,y+32,obj_Red_Laser);
            attack_D.direction = 180;
            attack_D.speed = 8;
            
            break;
            
        case 1:
            // Contact Beam    
            var laser = instance_create(x,y,obj_Red_Laser_Large);
            
            break;
            
        case 2:
            // Spread Shot    
            // Upper 45 degrees of spread pattern
            for (var i = 180; i > 135; i-=15)
            {
                var spread = instance_create(x,y,obj_Red_Laser);
                spread.direction = i;
                spread.image_angle = spread.direction;
                spread.speed = 8;
            }
            // Lower 45 degrees of spread pattern 
            for (var i = 180; i < 225; i+=15)
            {
                var spread = instance_create(x,y,obj_Red_Laser);
                spread.direction = i;
                spread.image_angle = spread.direction;
                spread.speed = 8;
            }
            
            break;
    }

    // Lock Attack Window
    attack_lock_3 = true;
    // Set Timer for When to Attack Again
    alarm[4] = 120;
}
