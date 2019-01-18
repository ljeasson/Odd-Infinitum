// Clean House
instance_destroy(obj_Core);
instance_destroy(obj_Egg_Bouncing);
instance_destroy(obj_Egg_Following);
instance_destroy(obj_Egg_Exploding)
instance_destroy(obj_Exploding_Egg_Projectile);
instance_destroy(obj_Tentacle_Controller);
instance_destroy(obj_AoE_Controller);
instance_destroy(obj_AoE_Creator);
instance_destroy(obj_Horde_Controller);
instance_destroy(obj_Alien_Youngling);

// Generate Blood Explosion
generate_blood_explosions(480);

// Set Explosion Timer
if (!explosion_imminent)
{
    alarm[0] = 180;
    explosion_imminent = true;
}
