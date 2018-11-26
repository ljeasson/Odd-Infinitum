// energy_buckler()
// Creates Energy Buckler designed for temporary defense and counters

X = argument0;
Y = argument1;

if (fire_again_remote)
{
    // Create energy buckler instance
    var buckler = instance_create(x,y,obj_Energy_Buckler);
    buckler.object_to_follow = obj_Player_Remote;
        
    // Decrease overheat by 10
    remote_energy -= 10;
        
    // Disable fire_again
    fire_again_remote = false
    alarm[1] = 60;
}

