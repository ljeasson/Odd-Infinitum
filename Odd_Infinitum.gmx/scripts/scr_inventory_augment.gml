/// scr_inventory_augment()

// Text Settings
draw_set_colour(c_black);
draw_set_font(UI_Font_Large);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw "AUGMENTS" Title
draw_set_colour(c_white);
draw_text(room_width/2, 176, "AUGMENTS");

// Instantiate and Populate Array
augments[0,0] = obj_Quick_Repair_Inv;
augments[1,0] = obj_Automated_Repair_Inv;
augments[2,0] = obj_Buckler_Repair_Inv; 
augments[3,0] = obj_Buckler_Reload_Inv; 
augments[0,1] = obj_Supply_Drop_Inv;
augments[1,1] = obj_Emergency_Repair_Inv;
augments[2,1] = obj_Emergency_Supercharge_Inv;
augments[3,1] = obj_Tortise_Inv;
augments[0,2] = obj_Quick_Repair_Inv; //obj_Close_Call_Stasis_Inv
augments[1,2] = obj_Quick_Repair_Inv; //obj_Close_Call_Supercharge_Inv;
augments[2,2] = obj_Quick_Repair_Inv; //obj_Auto_Counter_Inv;
augments[3,2] = obj_Quick_Repair_Inv; //obj_Heat_Absorption_Inv;

// Draw Augment Objects
for (i = 1; i <= 4; i++)
    for (j = 1; j < 3; j++)
        instance_create_once(80 + i*244, 176 + j*108 - 64, augments[i-1,j-1]);

// Draw Back Button
instance_create_once(80,72,obj_Back_Button_Inv);
