// fire_missile()
// Fires a missile

X = argument0;
Y = argument1;

if (remote_missile_count > 0)
{
    // Normal Missile
    if (global.missile == "basic_missile") scr_basic_missile_remote();
    
    // Homing Missile   
    if (global.missile = "homing_missile") scr_homing_missile_remote();
    
    // Missile Barrage
    if (global.missile = "missile_barrage" && remote_missile_count >= 3) scr_missile_barrage_remote();
}

// If missile is fired with no energy, take damage
if (remote_energy <= 0) player_take_damage_heat_remote(10);
