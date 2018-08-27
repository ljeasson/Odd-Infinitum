/// Check if at starting position
if (x == 832 && y == 368 && state != fleet_commander_states.fight)
{
    // Set Movement Path
    path_start(path_Fleet_Commander_1, 2, path_action_restart, true);
    
    // State 
    state = fleet_commander_states.fight;
}
else if (state != fleet_commander_states.fight)
{
    // Move towards starting point
    move_towards_point(832,368,4);
}
