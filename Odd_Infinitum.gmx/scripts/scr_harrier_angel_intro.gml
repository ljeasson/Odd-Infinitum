// Create Portal
if (!instance_exists(obj_Portal))
    instance_create(x,y,obj_Portal);

//Morph Between Sprites

if (counter < 240)
{
    // Set Sprite
    if (counter == 60)        sprite_index = spr_Harrier_Angel_2;
    else if (counter == 120)  sprite_index = spr_Harrier_Angel_3;
    else if (counter == 180)  sprite_index = spr_Harrier_Angel_1;        
    
    // Update Counter
    counter += 1;
}
else
{
    // Destroy Portal
    instance_destroy(obj_Portal);

    // Set Default Sprite
    sprite_index = spr_Harrier_Angel_1;

    // State Transition
    state = harrier_angel_states.phase_1_1;
}
