/// spawn_following_egg()
// Spawn eggs that move very slowly and home towards the player

if (!attack_lock_3)
{
    instance_create(x,y,obj_Egg_Exploding);
    
    attack_lock_3 = true;
    alarm[3] = 300;
}
