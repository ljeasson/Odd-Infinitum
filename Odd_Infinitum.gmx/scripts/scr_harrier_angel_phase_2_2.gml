// Set Angelic Form
form_transition(spr_Harrier_Angel_2);

// Start 2nd Phase Path
if (path_index = -1)
    path_start(path_Harrier_Angel_1, 3, path_action_restart, false);
    
// Attacks
selection = irandom(3);    

switch (selection)
{
    case 0:
        // Angelic Dart
        if (!attack_lock)    
        {
            var dart = instance_create(obj_Harrier_Angel.x+200, obj_Harrier_Angel.y, obj_Angelic_Dart);
            dart.direction = 180;
            dart.speed = 10;        
                
            // Lock Attack
            attack_lock = true;
            alarm[0] = random_range(30,90);
            break;
        }
               
    case 1:
        // Tracking Halo
        if (!attack_lock_2)
        {
            instance_create(obj_Harrier_Angel.x+200, obj_Harrier_Angel.y, obj_Tracking_Halo);
    
            // Lock Attack
            attack_lock_2 = true;
            alarm[4] = 960;
            break;
        } 
        
    case 2: 
        if (!attack_lock_3) 
        {  
            // Angelic Projectiles
            instance_create_once(obj_Harrier_Angel.x+200, obj_Harrier_Angel.y, obj_Angel_Projectile_Holder_Middle);
            instance_create_once(obj_Harrier_Angel.x+180, obj_Harrier_Angel.y-120, obj_Angel_Projectile_Holder_Top); 
            instance_create_once(obj_Harrier_Angel.x+180, obj_Harrier_Angel.y+120, obj_Angel_Projectile_Holder_Bottom);     
    
            // Lock Attack
            attack_lock_3 = true;
            alarm[5] = 480;
        }
        
    default:
        break;
}
