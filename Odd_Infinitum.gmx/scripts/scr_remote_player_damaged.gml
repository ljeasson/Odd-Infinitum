/// scr_remote_player_damaged();

// Check Dodge
// Player speed is 8 when dodging
// Player speed is 4 otherwise
check_dodge();

// Set sprite to damaged
if (obj_Player.sprite_index != spr_Player_Damaged)
    obj_Player.sprite_index = spr_Player_Damaged;

// Callouts
check_callout();

// Laser and Missile controls
// Laser
fire_regain_laser(x,y);

// Dodge
dodge();
