// fire_laser()
// Fires a laser

// Basic Laser
if (global.laser == global.laser_array[0,0]) scr_basic_laser();
    
// Triple shot
if (global.laser == global.laser_array[1,0]) scr_triple_shot();

// Rapid fire
if (global.laser == global.laser_array[2,0]) scr_rapid_fire();
    
// Charge shot
if (global.laser == global.laser_array[3,0]) scr_charge_shot();

// Seeker shot
if (global.laser == global.laser_array[4,0]) scr_seeker_shot();

// Fleet Trident
if (global.laser == global.laser_array[5,0]) scr_trident();



// If laser is fired with no health, take damage
if (global.overheat <= 0) player_take_damage_heat(10);
