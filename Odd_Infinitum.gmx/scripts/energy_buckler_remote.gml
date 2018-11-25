// energy_buckler()
// Creates Energy Buckler designed for temporary defense and counters

X = argument0;
Y = argument1;

if (fire_again_remote)
{
    // Create energy buckler instance
    var buckler = instance_create(x,y,obj_Energy_Buckler);
    buckler.x = X+24;
    buckler.y = Y+16;
        
    // Decrease overheat by 10
    remote_energy -= 10;
        
    // Disable fire_again
    fire_again_remote = false
    alarm[1] = 60;
}

