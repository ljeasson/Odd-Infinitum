// Set Default Form
form_transition(spr_Harrier_Angel_1);

// Set Path
if (path_index = -1)
    path_start(path_Harrier_Angel_1, 3, path_action_restart, false);
    
// Rotation 
if (rotate)  
    rotate_to_angle(-90, 10);
else
    rotate_to_angle(0, 10);
     
// Attacks
if (!attack_lock)
{   
    // Bident Rapid Fire
    
    // Rotate
    rotate = true;
    alarm[6] = 240;
    
    // Lock Attack
    attack_lock = true;
    alarm[0] = 480;
}

if (!attack_lock_2)
{
    // Bident Burst Fire
        
    // Lock Attack
    attack_lock_2 = true;
    alarm[4] = 1200;
}

if (!attack_lock_3)
{
    // Harrier Strike
    
    // Rotate
    rotate = true;
    alarm[6] = 240;
    
    // Create Harrier Missile Generator
    instance_create(x,y,harrier_strike_controller);
        
    // Lock Attack
    attack_lock_3 = true;
    alarm[4] = 1200;
}
