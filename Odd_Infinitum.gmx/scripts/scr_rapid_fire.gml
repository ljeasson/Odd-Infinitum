/// Rapid Fire

if (fire_again)
{
    // Create rapid fire instance
    instance_create(x+48,y+24,obj_Rapid_Fire_controller);
        
    // Decrease overheat by 5
    global.overheat -= 20;
}
