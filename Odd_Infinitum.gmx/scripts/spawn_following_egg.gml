/// spawn_following_egg()
// Spawn eggs that move very slowly and home towards the player

if (!attack_lock_2)
{
    instance_create(x,y,obj_Egg_Following);
    
    attack_lock_2 = true;
    alarm[2] = 600;
}
