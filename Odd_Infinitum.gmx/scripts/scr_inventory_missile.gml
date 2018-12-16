/// scr_inventory_missile()

// Text Settings
draw_set_colour(c_black);
draw_set_font(UI_Font_Large);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw "MISSILES" Title
draw_text(room_width/2, 96, "MISSILES");

// Instantiate and Populate Array
var missiles = array_create(3);
missiles[0] = obj_Basic_Missile_Inv;
missiles[1] = obj_Homing_Missile_Inv;
missiles[2] = obj_Missile_Barrage_Inv;

// Draw Laser Objects
for (i = 1; i <= array_length_1d(missiles); i++)
    for (j = 0; j < 4; j++)
        instance_create_once(80 + i*244, 176 + j*108, missiles[i-1]);
        
// Draw Back Button
instance_create_once(80,72,obj_Back_Button_Inv);
