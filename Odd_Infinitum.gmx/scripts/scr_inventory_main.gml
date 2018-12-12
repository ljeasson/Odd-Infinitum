/// scr_inventory_main()

// Text Settings
draw_set_colour(c_black);
draw_set_font(UI_Font_Large);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw "PILOT INVENTORY" Title
draw_text(room_width/2, 96, "PILOT INVENTORY");

// Text for Equip Boxes
draw_set_font(UI_Font);
draw_text(laser_box_column, 224,"LASER");
draw_text(alt_laser_box_column, 224,"ALT LASER");
draw_text(missile_box_column, 224,"MISSILE");
draw_text(augment_box_column, 224,"AUGMENT");
   
// Text for Selectable Items 
//draw_text(192,room_height-384+20,"LASERS:");
//draw_text(192,room_height-289+20,"MISSILES:");
//draw_text(192,room_height-192+20,"AUGMENTS:");

///////////////////////////////////////////////////

// Equip Boxes
instance_create_once(laser_box_column,256,obj_Laser_Box);
instance_create_once(alt_laser_box_column,256,obj_Alt_Laser_Box);
instance_create_once(missile_box_column,256,obj_Missile_Box);
instance_create_once(augment_box_column,256,obj_Augment_Box);

/*
// Laser Objects
if (global.basic_laser)
    instance_create_once(256,room_height-400,obj_Basic_Laser_Inv);
if (global.triple_shot)
    instance_create_once(352,room_height-400,obj_Triple_Shot_Inv);
if (global.rapid_fire)
    instance_create_once(448,room_height-400,obj_Rapid_Fire_Inv);
if (global.giant_laser)
    instance_create_once(544,room_height-400,obj_Giant_Laser_Inv);

// Missile Objects
if (global.basic_missile)
    instance_create_once(256,room_height-305,obj_Basic_Missile_Inv);
if (global.homing_missile)
    instance_create_once(352,room_height-305,obj_Homing_Missile_Inv);
if (global.missile_barrage)
    instance_create_once(448,room_height-305,obj_Missile_Barrage_Inv);

// Augment Objects
*/
