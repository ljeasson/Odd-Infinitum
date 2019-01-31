/// scr_fleet_fighter_intro

// Move towards starting point
if (x == 1056 && y == 336)
    state = fleet_fighter_states.fight;
else
    move_towards_point(1056,336,4);
