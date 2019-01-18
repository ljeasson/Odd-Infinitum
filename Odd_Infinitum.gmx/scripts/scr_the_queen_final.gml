/// scr_the_queen_final()
// Boss actions when 0 Eyes are present and core is exposed

// Change Sprite
sprite_index = spr_The_Queen_2nd;

// Destroy Eyes (just in case)
instance_destroy(obj_Eye);

// Create Core
instance_create_once(room_width-120, room_height/2+16, obj_Core);
