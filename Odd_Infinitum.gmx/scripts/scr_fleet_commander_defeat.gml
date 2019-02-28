// Stop Moving
path_end();
    
// Destroy Attack Controllers
instance_destroy(obj_Wave_Shot_Controller);
instance_destroy(obj_Red_Large_Laser_Controller);
instance_destroy(obj_Fleet_Commander_Missile);

// Change sprite
if (sprite_index != spr_Fleet_Commander_Daemeon_Defeat)
    sprite_index = spr_Fleet_Commander_Daemeon_Defeat;

// Generate Random Explosions
if (counter == 30)
{
    effect_create_above(ef_smoke, obj_Fleet_Commander_Daemeon.x, obj_Fleet_Commander_Daemeon.y, 2, c_ltgray);
    counter = 0;
}
counter += 1;
    
// Fall back to Earth
move_towards_point(room_width-512, room_height-128, 1.5);

// Set Explosion Timer
if (!explosion_imminent)
{
    alarm[2] = 240;
    explosion_imminent = true;
}
