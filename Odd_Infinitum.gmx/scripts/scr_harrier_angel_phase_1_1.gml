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
    // Angelic Projectiles
    instance_create_once(obj_Harrier_Angel.x-200, obj_Harrier_Angel.y, obj_Angel_Projectile_Holder_Middle);
    instance_create_once(obj_Harrier_Angel.x-180, obj_Harrier_Angel.y-120, obj_Angel_Projectile_Holder_Top); 
    instance_create_once(obj_Harrier_Angel.x-180, obj_Harrier_Angel.y+120, obj_Angel_Projectile_Holder_Bottom);
    
    // Lock Attack
    attack_lock = true;
    alarm[0] = 480;
}
if (!attack_lock_2)
{
    // Harrier Strike
    //instance_create_once();
    
    // Lock Attack
    attack_lock_2 = true;
    alarm[4] = 1200;
}
