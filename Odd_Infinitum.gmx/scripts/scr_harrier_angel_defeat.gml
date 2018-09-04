// Stop Moving
path_end();
    
// Generate Random Explosions
generate_explosions(160)
    
// Set Explosion Timer
if (!explosion_imminent)
{
    alarm[2] = 180;
    explosion_imminent = true;
}
