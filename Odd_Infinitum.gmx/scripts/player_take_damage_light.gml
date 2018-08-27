/// If damage is taken in normal state, switch to damaged state
/// and decrease health by a specified amount

if (obj_Player.state == player_states.normal) {
    // Flash instance of red damage screen
    instance_create(0,0,obj_Damaged_Screen);
    
    // Decrease health
    health -= argument0;
}
