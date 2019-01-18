// fire_laser()
// Fires a laser

// Basic Laser
if (global.laser == lasers.pilot_laser) scr_basic_laser();
    
// Triple shot
if (global.laser == lasers.spread_shot) scr_triple_shot();

// Rapid fire
if (global.laser == lasers.rapid_fire) scr_rapid_fire();
    
// Charge shot
if (global.laser == lasers.charge_shot) scr_charge_shot();

// Seeker shot
if (global.laser == lasers.seeker_laser) scr_seeker_shot();

// Fleet Trident
if (global.laser == lasers.fleet_trident) scr_trident();



// If laser is fired with no health, take damage
if (global.overheat <= 0) player_take_damage_heat(10);
