// fire_laser()
// Fires a laser

X = argument0;
Y = argument1;

// Basic Laser
if (global.laser == "basic_laser") scr_basic_laser_remote();
    
// Triple shot
if (global.laser == "triple_shot") scr_triple_shot_remote();
    
// Giant Laser
//if (global.laser = "giant_laser") scr_giant_laser();

// Rapid fire
//if (global.laser == "rapid_fire") scr_rapid_fire();

// If laser is fired with no health, take damage
if (remote_energy <= 0) player_take_damage_heat_remote(10);
