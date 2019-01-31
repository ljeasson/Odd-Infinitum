/// scr_fleet_fighter_defeat

// Stop Moving
path_end();
    
// Generate Random Explosions
generate_explosions(99);
    
// Set Explosion Timer
if (!explosion_imminent)
{
    alarm[2] = 180;
    explosion_imminent = true;
}
