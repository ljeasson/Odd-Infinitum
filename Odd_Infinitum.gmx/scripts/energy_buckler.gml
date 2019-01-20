// energy_buckler()
// Creates Energy Buckler designed for temporary defense and counters

if (energy_buckler_available)
{
    // Create energy buckler instance
    var buckler = instance_create(x+24,y+16,obj_Energy_Buckler);
        
    // Decrease overheat by 10
    global.overheat -= 10;
        
    // Disable fire_again
    energy_buckler_available = false
    alarm[1] = 60;
}

