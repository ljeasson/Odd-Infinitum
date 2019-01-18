// fire_missile()
// Fires a missile

// Standard Missile
if (global.missile == missiles.standard_missile) scr_basic_missile();
    
// Homing Missile   
if (global.missile = missiles.homing_missile) scr_homing_missile();
    
// Missile Barrage
if (global.missile = missiles.missile_barrage) scr_missile_barrage();


// If missile is fired with no energy, take damage
if (global.overheat <= 0) player_take_damage_heat(10);
