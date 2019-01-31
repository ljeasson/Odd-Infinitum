/// scr_fleet_fighter_fight

// Set Movement Path
if (path_index = -1)
    path_start(path_Defector_1, 4, path_action_reverse, true);
    
// Randomly Generate 3 Red Lasers
if (attack_lock == false)
{
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
    
    // Lock Attack Window
    attack_lock = true;
    // Set Timer for When to Attack Again
    alarm[0] = random_range(30,120);
}
    
// Generate Small Seeker Orbs
if (instance_number(obj_Red_Seeker) < 3)
    if (Chance(0.5,50)) 
        for (i=0; i<3; i++)
            instance_create(x,y,obj_Red_Seeker);
