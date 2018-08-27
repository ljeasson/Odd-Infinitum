// Move up until height is equal to the center of the screen
if (y > room_height/2)
{
    y -= entrance_speed - 2;
}
// Then move right until off screen
else
{
    y -= 0
    x += entrance_speed + 1;
    if (x >= room_width + 512)
    {
        // Deactivate Defector objects
        instance_deactivate_object(obj_Defector_1_Orbit);
        instance_deactivate_object(obj_Defector_2_Orbit);
        instance_deactivate_object(obj_Defector_3_Orbit);
                
        // Change state
        state = fleet_commander_states.idle;
    }
}
