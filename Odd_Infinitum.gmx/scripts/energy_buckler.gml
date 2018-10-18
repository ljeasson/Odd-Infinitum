// energy_buckler()
// Creates Energy Buckler designed for temporary defense and counters

if (key_energy_buckler)
{
    if (fire_again)
    {
        // Create energy buckler instance
        instance_create(x+24,y+16,obj_Energy_Buckler);
        
        // Decrease overheat by 10
        global.overheat -= 10;
        
        // Disable fire_again
        fire_again = false
        alarm[1] = 60;
    }
}
