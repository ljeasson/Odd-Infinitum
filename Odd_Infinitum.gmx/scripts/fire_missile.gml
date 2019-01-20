// fire_missile()
// Fires a missile

// Standard Missile
if (global.missile == global.missile_array[0,0]) scr_basic_missile();
    
// Homing Missile   
if (global.missile == global.missile_array[1,0]) scr_homing_missile();
    
// Missile Barrage
if (global.missile == global.missile_array[2,0]) scr_missile_barrage();


// If missile is fired with no energy, take damage
if (global.overheat <= 0) player_take_damage_heat(10);
