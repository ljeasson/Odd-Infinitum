/// scr_remote_player_damaged();

// Check Dodge
// Player speed is 8 when dodging
// Player speed is 4 otherwise
check_dodge();

// Set sprite to damaged
if (obj_Player_Remote.sprite_index != spr_Player_Damaged)
    obj_Player_Remote.sprite_index = spr_Player_Damaged;

switch (action)
{
    case 1:
        // Regain Laser
        fire_regain_laser_remote(x,y);
        action = 0;
        break;
    
    case 71:
        // Callouts
        callout_remote(remote_callout_1);
        action = 0;
        break;
    case 72:
        // Callouts
        callout_remote(remote_callout_2);
        action = 0;
        break;     
    case 73:
        // Callouts
        callout_remote(remote_callout_3);
        action = 0;
        break;    
    case 74:
        // Callouts
        callout_remote(remote_callout_4);
        action = 0;
        break;  
    case 75:
        // Callouts
        callout_remote(remote_callout_5);
        action = 0;
        break;    
    case 76:
        // Callouts
        callout_remote(remote_callout_6);
        action = 0;
        break;   
    case 77:
        // Callouts
        callout_remote(remote_callout_7);
        action = 0;
        break;   
    case 78:
        // Callouts
        callout_remote(remote_callout_8);
        action = 0;
        break; 
    case 79:
        // Callouts
        callout_remote(remote_callout_9);
        action = 0;
        break; 
    case 70:
        // Callouts
        callout_remote(remote_callout_10);
        action = 0;
        break;
    
    default:
        break;
}

