/// Rapid Fire

if (fire_again)
{
    // Create rapid fire instance
    instance_create(X+48,Y+24,obj_Seeker_Shot);
        
    // Decrease overheat by 5
    global.overheat -= 10;
        
    // Disable fire_again
    fire_again = false
    alarm[1] = global.shot_timer;
}
