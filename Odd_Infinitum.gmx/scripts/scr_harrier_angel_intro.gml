// Create Portal
if (!instance_exists(obj_Portal_Entrance))
    instance_create(x,y,obj_Portal_Entrance);

//Morph Between Sprites
if (counter < 240)
{
    // Set Sprite
    if      (counter == 60)   form_transition(spr_Harrier_Angel_2);
    else if (counter == 120)  form_transition(spr_Harrier_Angel_3);
    else if (counter == 180)  form_transition(spr_Harrier_Angel_1);        
    
    // Update Counter
    counter += 1;
}
else
{
    // Destroy Portal
    instance_destroy(obj_Portal_Entrance);

    // State Transition
    state = harrier_angel_states.phase_1_2;
}
