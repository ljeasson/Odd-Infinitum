/// tentacle_attack()
// Produce variety of tentacle attacks from the 
// top or bottom of screen that thrust upward or downward

// Tentacle Attack from Top
if (!obj_The_Queen.attack_lock)
{
    instance_create(random_range(0, room_width-512), -652, obj_Tentacle_Down);
    
    obj_The_Queen.attack_lock = true;
    alarm[0] = random_range(240,480);
}

// Tentacle Attack from Bottom
if (!obj_The_Queen.attack_lock_2)
{
    instance_create(random_range(0, room_width-512), room_height+652, obj_Tentacle_Up);
    
    obj_The_Queen.attack_lock_2 = true;
    alarm[1] = random_range(240,480);
}
