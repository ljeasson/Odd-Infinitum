// fire_laser()
// Fires a laser

X = argument0;
Y = argument1;

// Basic Laser
if (global.laser == "basic_laser") scr_basic_laser();
    
// Triple shot
if (global.laser == "triple_shot") scr_triple_shot();

// Rapid fire
if (global.laser == "rapid_fire") scr_rapid_fire();
    
// Seeker shot
if (global.laser == "seeker_shot") scr_seeker_shot();

// Charge shot
if (global.laser == "charge_shot") scr_charge_shot();

// Giant Laser
//if (global.laser = "giant_laser") scr_giant_laser();

// If laser is fired with no health, take damage
if (global.overheat <= 0) player_take_damage_heat(10);
