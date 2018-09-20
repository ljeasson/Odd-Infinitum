// Create Portal
//if (!instance_exists(obj_Portal))
//    instance_create(x,y,obj_Portal);

//Morph Between Sprites

if (counter < 120)
{
    if (!attack_lock)
    {
        if (sprite_index == spr_Harrier_Angel_1){
            sprite_index = spr_Harrier_Angel_2;
            attack_lock = true;
            alarm[0] = 7.5;
        }
        else if (sprite_index == spr_Harrier_Angel_2){ 
            sprite_index = spr_Harrier_Angel_3;
            attack_lock = true;
            alarm[0] = 7.5;
        }
        else if (sprite_index == spr_Harrier_Angel_3){ 
            sprite_index = spr_Harrier_Angel_1;
            attack_lock = true;
            alarm[0] = 7.5;
        }   
    }
    counter += 1;
}
else
{
    // Destroy Portal
    instance_destroy(obj_Portal);

    // Set Default Sprite
    sprite_index = spr_Harrier_Angel_1;

    // State Transition
    state = harrier_angel_states.phase_1;
}
