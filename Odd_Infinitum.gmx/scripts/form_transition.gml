/// form_transition(new_form)
// Transition between two forms of the Harrier Angel

old_form = sprite_index
new_form = argument0;

// 1 to 2
if (old_form == spr_Harrier_Angel_1 && new_form = spr_Harrier_Angel_2)
{
    if (sprite_index != spr_Harrier_Angel_1_2)     
        sprite_index = spr_Harrier_Angel_1_2;
}
// 1 to 3
if (old_form == spr_Harrier_Angel_1 && new_form = spr_Harrier_Angel_3)
{
    if (sprite_index != spr_Harrier_Angel_1_3)
        sprite_index = spr_Harrier_Angel_1_3;
}
// 2 to 1
if (old_form == spr_Harrier_Angel_2 && new_form = spr_Harrier_Angel_1)
{
    if (sprite_index != spr_Harrier_Angel_2_1)  
        sprite_index = spr_Harrier_Angel_2_1;
}
// 2 to 3
if (old_form == spr_Harrier_Angel_2 && new_form = spr_Harrier_Angel_3)
{
    if (sprite_index != spr_Harrier_Angel_2_3)  
        sprite_index = spr_Harrier_Angel_2_3;
}
// 3 to 1
if (old_form == spr_Harrier_Angel_3 && new_form = spr_Harrier_Angel_1)
{
    if (sprite_index != spr_Harrier_Angel_3_1)  
        sprite_index = spr_Harrier_Angel_3_1;
}
// 3 to 2
if (old_form == spr_Harrier_Angel_3 && new_form = spr_Harrier_Angel_2)
{
    if (sprite_index != spr_Harrier_Angel_3_2)  
        sprite_index = spr_Harrier_Angel_3_2;
}
