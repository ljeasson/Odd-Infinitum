// Set Default Form
form_transition(spr_Harrier_Angel_2);

// Set Path
if (path_index = -1)
    path_start(path_Harrier_Angel_1, 3, path_action_restart, true);
    
// Attacks
if (!attack_lock)
{   
    // Tracking Halo
    instance_create(obj_Harrier_Angel.x-200, obj_Harrier_Angel.y, obj_Tracking_Halo);
    
    // Lock Attack
    attack_lock = true;
    alarm[0] = 960;
}
