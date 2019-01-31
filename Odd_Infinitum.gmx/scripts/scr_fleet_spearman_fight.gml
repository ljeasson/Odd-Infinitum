/// scr_fleet_spearman_fight()

// Set Movement Path
if (path_index == -1)
    path_start(path_Defector_3, 4, path_action_reverse, true);
    
// Randomly Generate a Large Red Laser
if (attack_lock == false)
{
    var laser = instance_create(x,y,obj_Red_Large_Laser_Controller);             
            
    attack_lock = true;
    alarm[0] = random_range(240,360);
}
    
// Generate Red Spawner Orb
if (instance_number(obj_Red_Spawner_Glow))
    alarm[3] = 600; 
