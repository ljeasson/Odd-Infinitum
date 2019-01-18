// Set Default Form
form_transition(spr_Harrier_Angel_2);

// Set Path
if (path_index = -1)
    path_start(path_Harrier_Angel_1, 3, path_action_restart, true);
    
// Attacks
selection = irandom(2);    

switch (selection)
{
    case 0:
        // Angelic Dart
        if (!attack_lock)    
        {
            instance_create(obj_Harrier_Angel.x-200, obj_Harrier_Angel.y, obj_Angelic_Dart);
                        
            // Lock Attack
            attack_lock = true;
            alarm[0] = random_range(30,120);
            break;
        }
               
    case 1:
        // Tracking Halo
        if (!attack_lock_2)
        {
            instance_create(obj_Harrier_Angel.x-200, obj_Harrier_Angel.y, obj_Tracking_Halo);
    
            // Lock Attack
            attack_lock_2 = true;
            alarm[4] = 960;
            break;
        } 
               
     default:
        break;
}

