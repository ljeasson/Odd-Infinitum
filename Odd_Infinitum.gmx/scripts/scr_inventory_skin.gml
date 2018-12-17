/// scr_inventory_skin()

// Text Settings
draw_set_colour(c_black);
draw_set_font(UI_Font_Large);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw "SKINS" Title
draw_set_colour(c_white);
draw_text(room_width/2, 176, "SKINS");

// Draw Back Button
instance_create_once(80,72,obj_Back_Button_Inv);
