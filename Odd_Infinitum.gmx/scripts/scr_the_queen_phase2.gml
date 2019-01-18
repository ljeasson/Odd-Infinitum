/// scr_the_queen_phase2()
// Boss actions when 0 Eyes are present and core is exposed

// Change Sprite
sprite_index = spr_The_Queen_2nd;

// Destroy Eyes (just in case)
instance_destroy(obj_Eye);

// Create Core
instance_create_once(room_width-120, room_height/2+16, obj_Core);

// Create Tentacle Attack Controller
instance_create_once(0,0,obj_Tentacle_Controller);

// Create AoE Attack Controller
if (boss_health <= 75)
    instance_create_once(0,16,obj_AoE_Controller);
    
if (boss_health <= 50)
    instance_create_once(0,32,obj_Horde_Controller);
