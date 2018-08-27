/// If damage is taken in normal state, switch to damaged state
/// and decrease health by a specified amount

if (obj_Player.state == player_states.normal) {
    // Play Damage Sound
    audio_play_sound(snd_Player_Damage, 1, false);
    
    // Flash instance of red damage screen
    instance_create(0,0,obj_Damaged_Screen);
    
    // Shake camera
    instance_create(x,y,screen_shake);
    
    // Decrease health
    health -= argument0;
    
    // Change player state
    obj_Player.state = player_states.damaged;
    
    // Set timer to switch back to normal state
    alarm[0] = 180;
}
