/// scr_remote_player_normal();

// Check Dodge
// Player speed is 8 when dodging
// Player speed is 4 otherwise
check_dodge();

// Set sprite to normal
if (obj_Player.sprite_index != spr_Player)
    obj_Player.sprite_index = spr_Player;

switch (action)
{
    // Laser and Missile controls
    case 1:
        // Laser
        fire_laser(x,y);
        action = 0;
        break;
    case 2:
        // Alt Laser
        fire_alt_laser(x,y);
        action = 0;
        break;
    case 3:
        // Missile
        fire_missile(x,y);
        action = 0;
        break;
    case 4:
        // Missile Regain
        missile_regain(x,y);
        action = 0;
        break;
    case 5:    
        // Dodge
        dodge();
        action = 0;
        break;
    case 6:
        // Energy Buckler
        energy_buckler(x,y);
        action = 0;
        break;
    case 7:
        // Callouts
        check_callout();
        action = 0;
        break;   
    default:
        break;    
}
