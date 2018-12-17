/// scr_inventory_main()

// Text Settings
draw_set_colour(c_black);
draw_set_font(UI_Font_Large);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw "PILOT INVENTORY" Title
//draw_text(room_width/2, 96, "PILOT INVENTORY");

// Text for Equip Boxes
draw_set_colour(c_white);
draw_text(room_width/2, 176, "COMBAT");
draw_set_font(UI_Font);
draw_text(laser_box_column, 224,"LASER");
draw_text(alt_laser_box_column, 224,"ALT LASER");
draw_text(missile_box_column, 224,"MISSILE");
draw_text(augment_box_column, 224,"AUGMENT");
   
// Draw Equip Boxes
draw_sprite(spr_Button_Space_Small,0,laser_box_column,256+112);
instance_create_once(laser_box_column,256,obj_Laser_Box);

draw_sprite(spr_G_Small,0,alt_laser_box_column,256+112);
instance_create_once(alt_laser_box_column,256,obj_Alt_Laser_Box);

draw_sprite(spr_F_Small,0,missile_box_column,256+112);
instance_create_once(missile_box_column,256,obj_Missile_Box);

instance_create_once(augment_box_column,256,obj_Augment_Box);

// Draw Pilot Tools
draw_set_colour(c_white);
draw_set_font(UI_Font_Large);
draw_text(384,room_height-336,"TOOLS");

if (global.pilot_insignia)  draw_sprite(spr_Pilot_Insignia,0,256,room_height-256);
if (global.friendly_pilot_beacon)  draw_sprite(spr_Friendly_Pilot_Beacon,0,384,room_height-256);
if (global.hostile_pilot_beacon)  draw_sprite(spr_Hostile_Pilot_Beacon,0,512,room_height-256);

// Draw Pilot Skin
draw_text(room_width-384,room_height-336,"PILOT");

instance_create_once(room_width-384,room_height-288,obj_Skin_Box);
