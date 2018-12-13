/// scr_inventory_laser()

// Text Settings
draw_set_colour(c_black);
draw_set_font(UI_Font_Large);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw "LASERS" Title
draw_text(room_width/2, 96, "LASERS");

// Instantiate and Populate Array
var lasers = array_create(6);
lasers[0] = obj_Basic_Laser_Inv;
lasers[1] = obj_Triple_Shot_Inv;
lasers[2] = obj_Rapid_Fire_Inv;
lasers[3] = obj_Giant_Laser_Inv;
lasers[4] = obj_Seeker_Shot_Inv;
lasers[5] = obj_Charge_Shot_Inv;

// Draw Laser Objects
for (i = 1; i <= array_length_1d(lasers); i++)
    for (j = 0; j < 4; j++)
        instance_create_once(80 + i*244, 176 + j*108, lasers[i-1]);
