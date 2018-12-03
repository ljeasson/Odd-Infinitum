// energy_buckler()
// Creates Energy Buckler designed for temporary defense and counters

if (fire_again)
{
    // Create energy buckler instance
    var buckler = instance_create(x,y,obj_Energy_Buckler);
        
    // Decrease overheat by 10
    global.overheat -= 10;
        
    // Disable fire_again
    fire_again = false
    alarm[1] = 60;
}

