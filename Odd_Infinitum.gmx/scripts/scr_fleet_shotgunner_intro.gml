/// scr_fleet_shotgunner_intro()

// Move towards starting point
if (x == 1120 && y == 352)
    state = fleet_shotgunner_states.fight;
else 
    move_towards_point(1120,352,4);
