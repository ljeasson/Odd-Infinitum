/// fire_alt_laser()
// Fires alternative laser

if (!instance_exists(obj_Energy_Buckler_Persistent))
{
    // Pilot Laser
    if (global.alt_laser == global.laser_array[0,0]) scr_basic_laser();
    
    // Spread shot
    if (global.alt_laser == global.laser_array[1,0]) scr_triple_shot();

    // Rapid fire
    if (global.alt_laser == global.laser_array[2,0]) scr_rapid_fire();
    
    // Charge shot
    if (global.alt_laser == global.laser_array[3,0]) scr_charge_shot();

    // Seeker shot
    if (global.alt_laser == global.laser_array[4,0]) scr_seeker_shot();

    // Fleet Trident
    if (global.alt_laser == global.laser_array[5,0]) scr_trident();
}

// If laser is fired with no health, take damage
if (global.overheat <= 0) player_take_damage_heat(10);
