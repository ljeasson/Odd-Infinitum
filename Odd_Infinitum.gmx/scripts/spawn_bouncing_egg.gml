/// spawn_bouncing_egg()
// Spawn eggs that move slowly and bounce off the boundaries of the level

if (!attack_lock)
{
    if (obj_The_Queen.state == the_queen_states.phase1 && instance_number(obj_Egg_Bouncing) < 50) 
        instance_create(x,y,obj_Egg_Bouncing);
    if (obj_The_Queen.state == the_queen_states.phase2 && instance_number(obj_Egg_Bouncing) < 10) 
        instance_create(x,y,obj_Egg_Bouncing);
    
    attack_lock = true;
    alarm[1] = 60;
}
