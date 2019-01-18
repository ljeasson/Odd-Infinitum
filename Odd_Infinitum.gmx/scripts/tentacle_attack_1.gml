/// tentacle_attack_1()
// Produce tentacle from the top or bottom of screen
// that thrust upward or downward

if (!attack_lock)
{
    top_or_bottom = 0;

    // Top
    if (top_or_bottom == 0)
        instance_create(random_range(0, room_width-512), -652, obj_Tentacle_Down);
        
    // Bottom
    if (top_or_bottom == 1)
        instance_create(random_range(0, room_width-512), room_height+652, obj_Tentacle_Up);
    
    attack_lock = true;
    alarm[0] = 30;
}
