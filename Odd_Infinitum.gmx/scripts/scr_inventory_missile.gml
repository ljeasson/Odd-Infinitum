/// scr_inventory_missile()

// Text Settings
draw_set_colour(c_black);
draw_set_font(UI_Font_Large);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw "MISSILES" Title
//draw_text(room_width/2, 96, "MISSILES");
draw_set_color(c_white);
draw_text(room_width/2, 176, "MISSILES");

// Instantiate and Populate Array
missiles[0,0] = obj_Basic_Missile_Inv;

if (global.missile_array[global.homing_missile_index,global.bought_index]) missiles[1,0] = obj_Homing_Missile_Inv;
else missiles[1,0] = obj_Basic_Missile_Inv;

if (global.missile_array[global.missile_barrage_index,global.bought_index]) missiles[2,0] = obj_Missile_Barrage_Inv;
else missiles[2,0] = obj_Basic_Missile_Inv;

missiles[3,0] = obj_Basic_Missile_Inv;
missiles[0,1] = obj_Basic_Missile_Inv;
missiles[1,1] = obj_Basic_Missile_Inv;
missiles[2,1] = obj_Basic_Missile_Inv;
missiles[3,1] = obj_Basic_Missile_Inv;

// Draw Laser Objects
for (i = 1; i <= 4; i++)
    for (j = 1; j < 3; j++)
        instance_create_once(80 + i*244, 176 + j*108 - 64, missiles[i-1,0]);
        
// Draw Back Button
instance_create_once(80,72,obj_Back_Button_Inv);
