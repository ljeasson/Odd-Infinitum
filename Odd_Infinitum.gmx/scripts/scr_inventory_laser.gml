/// scr_inventory_laser()

// Text Settings
draw_set_colour(c_black);
draw_set_font(UI_Font_Large);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw "LASERS" Title
//draw_text(room_width/2, 96, "LASERS");
draw_set_colour(c_white);
draw_text(room_width/2, 176, "LASERS");

// Instantiate and Populate Array
lasers[0,0] = obj_Basic_Laser_Inv;

if (global.laser_array[global.spread_shot_index,global.bought_index]) lasers[1,0] = obj_Triple_Shot_Inv;;
else lasers[1,0] = obj_Basic_Laser_Inv;

if (global.laser_array[global.rapid_fire_index,global.bought_index]) lasers[2,0] = obj_Rapid_Fire_Inv;;
else lasers[2,0] = obj_Basic_Laser_Inv;

if (global.laser_array[global.charge_shot_index,global.bought_index]) lasers[3,0] = obj_Charge_Shot_Inv;;
else lasers[3,0] = obj_Basic_Laser_Inv;

if (global.laser_array[global.seeker_shot_index,global.bought_index]) lasers[0,1] = obj_Seeker_Shot_Inv;;
else lasers[0,1] = obj_Basic_Laser_Inv;

if (global.laser_array[global.fleet_trident_index,global.bought_index]) lasers[1,1] = obj_Trident_Inv;;
else lasers[1,1] = obj_Basic_Laser_Inv;

/*
lasers[1,0] = obj_Triple_Shot_Inv;
lasers[2,0] = obj_Rapid_Fire_Inv;
lasers[3,0] = obj_Charge_Shot_Inv;
lasers[0,1] = obj_Seeker_Shot_Inv;
lasers[1,1] = obj_Trident_Inv;
*/

lasers[2,1] = obj_Basic_Laser_Inv;
lasers[3,1] = obj_Basic_Laser_Inv;


// Draw Laser Objects
for (i = 1; i <= 4; i++)
    for (j = 1; j < 3; j++)
        instance_create_once(80 + i*244, 176 + j*108 - 64, lasers[i-1,j-1]);
        
// Draw Back Button
instance_create_once(80,72,obj_Back_Button_Inv);
