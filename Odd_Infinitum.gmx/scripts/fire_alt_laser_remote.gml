// fire_alt_laser()
// Fires alternative laser

X = argument0;
Y = argument1;

// Basic Laser
if (global.alt_laser == "basic_laser") scr_basic_laser_remote();

// Triple shot
if (global.alt_laser == "triple_shot") scr_triple_shot_remote();
    
// Giant Laser
//if (global.alt_laser = "giant_laser") scr_giant_laser();

// Rapid fire
//if (global.alt_laser == "rapid_fire") scr_rapid_fire();

// If laser is fired with no health, take damage
if (remote_energy <= 0) player_take_damage_heat_remote(10);
