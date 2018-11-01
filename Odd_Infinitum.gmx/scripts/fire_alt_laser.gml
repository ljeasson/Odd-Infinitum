// fire_alt_laser()
// Fires alternative laser

X = argument0;
Y = argument1;

// If laser is fired with no health, take damage
if (global.overheat <= 0)
{
    player_take_damage_heat(5);
}

if (key_alt_laser)
{
    // Basic Laser
    if (global.alt_laser == "basic_laser") scr_basic_laser();

    // Triple shot
    if (global.alt_laser == "triple_shot") scr_triple_shot();
    
    // Giant Laser
    if (global.alt_laser = "giant_laser") scr_giant_laser();
}


if (key_alt_laser_hold)
{
    // Rapid fire
    if (global.alt_laser == "rapid_fire") scr_rapid_fire();
}
