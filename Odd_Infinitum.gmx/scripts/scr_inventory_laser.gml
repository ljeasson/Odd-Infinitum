/// scr_inventory_laser()

// Text Settings
draw_set_colour(c_black);
draw_set_font(UI_Font_Large);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw "LASERS" Title
draw_text(room_width/2, 96, "LASERS");

// Instantiate and Populate Array
lasers[0,0] = obj_Basic_Laser_Inv;
lasers[1,0] = obj_Triple_Shot_Inv;
lasers[2,0] = obj_Rapid_Fire_Inv;
lasers[3,0] = obj_Charge_Shot_Inv;
lasers[0,1] = obj_Seeker_Shot_Inv;
lasers[1,1] = obj_Seeker_Shot_Inv;
lasers[2,1] = obj_Seeker_Shot_Inv;
lasers[3,1] = obj_Seeker_Shot_Inv;

// Draw Laser Objects
for (i = 1; i <= 4; i++)
    for (j = 0; j < 2; j++)
        instance_create_once(80 + i*244, 176 + j*108, lasers[i-1,j]);
