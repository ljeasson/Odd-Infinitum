/// scr_fleet_spearman_intro()

// Move towards starting point
if (x == 896 && y == 352)
    state = fleet_spearman_states.fight;
else
    move_towards_point(896,352,4);
