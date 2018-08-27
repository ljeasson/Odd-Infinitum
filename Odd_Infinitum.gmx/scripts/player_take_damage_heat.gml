/// If damage is taken in normal state, switch to damaged state
/// and decrease health by a specified amount

if (obj_Player.state == player_states.normal) {
    // Flash instance of heat damage screen and overheat text
    if (instance_number(obj_Heat_Screen) < 1) instance_create(0, 0, obj_Heat_Screen);
    if (instance_number(obj_Overheat) < 1) instance_create(room_width/2, room_height/2 - 100, obj_Overheat);
    
    // Decrease health
    health -= argument0;
}
