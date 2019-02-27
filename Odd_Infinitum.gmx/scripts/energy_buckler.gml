// energy_buckler()
// Creates Energy Buckler designed for temporary defense and counters

if (energy_buckler_available)
{
    // Create energy buckler instance
    if (global.augment == "Tortise")
    {
        instance_create(x+24,y+16,obj_Energy_Buckler_Persistent);
        player_dodge = 0;
        obj_Player.image_blend = c_white;
    }
    else
        instance_create(x+24,y+16,obj_Energy_Buckler);
        
    // Decrease overheat by 10
    global.overheat -= 10;
        
    // Disable fire_again
    energy_buckler_available = false
    alarm[1] = 60;
}

