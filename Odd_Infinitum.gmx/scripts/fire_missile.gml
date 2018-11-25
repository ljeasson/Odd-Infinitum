// fire_missile()
// Fires a missile

X = argument0;
Y = argument1;

if (global.missile_count > 0)
{
    // Normal Missile
    if (global.missile == "basic_missile") scr_basic_missile();
    
    // Homing Missile   
    if (global.missile = "homing_missile") scr_homing_missile();
    
    // Missile Barrage
    if (global.missile = "missile_barrage" && global.missile_count >= 3) scr_missile_barrage();
}

// If missile is fired with no energy, take damage
if (global.overheat <= 0) player_take_damage_heat(10);
