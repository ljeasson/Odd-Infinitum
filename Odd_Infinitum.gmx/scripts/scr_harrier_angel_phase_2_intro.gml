// Set Default Form
form_transition(spr_Harrier_Angel_1);

// Rotate back to default angle
rotate_to_angle(0, 5);

// Set 2nd Phase Timeline
timeline_index = Harrier_Angel_2nd_Phase;

// Start 2nd Phase Timeline
if (!timeline_running)
{
    timeline_position = 0;
    timeline_running = true;   
}
