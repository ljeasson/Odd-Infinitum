/// Rapid Fire

if (fire_again)
{
    // Create rapid fire instance
    instance_create(x+48,y+24,obj_Rapid_Fire);
        
    // Decrease overheat by 5
    global.overheat -= 15;
        
    // Disable fire_again
    fire_again = false
    alarm[1] = global.shot_timer;
}
