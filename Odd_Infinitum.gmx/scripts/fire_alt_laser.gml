// fire_alt_laser()
// Fires alternative laser

X = argument0;
Y = argument1;

// Basic Laser
if (global.alt_laser == "basic_laser") scr_basic_laser();

// Triple shot
if (global.alt_laser == "triple_shot") scr_triple_shot();

// Rapid fire
if (global.alt_laser == "rapid_fire") scr_rapid_fire();
    
// Seeker shot
if (global.alt_laser == "seeker_shot") scr_seeker_shot();

// Giant Laser
//if (global.alt_laser = "giant_laser") scr_giant_laser();

// If laser is fired with no health, take damage
if (global.overheat <= 0) player_take_damage_heat(10);
