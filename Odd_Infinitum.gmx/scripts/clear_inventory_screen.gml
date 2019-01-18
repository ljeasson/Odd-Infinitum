/// clear_inventory_screen()
/// Clears current inventory screen so that new inventory screen can be drawn

// Clear Buttons
instance_destroy(obj_Back_Button_Inv);
instance_destroy(obj_Done_Button_Inv);

// Clear Boxes
instance_destroy(obj_Laser_Box); 
instance_destroy(obj_Alt_Laser_Box);
instance_destroy(obj_Missile_Box);
instance_destroy(obj_Augment_Box);
instance_destroy(obj_Skin_Box);

// Clear Laser Inventory Items
instance_destroy(obj_Basic_Laser_Inv);
instance_destroy(obj_Triple_Shot_Inv);
instance_destroy(obj_Rapid_Fire_Inv);
instance_destroy(obj_Seeker_Shot_Inv);
instance_destroy(obj_Charge_Shot_Inv);
instance_destroy(obj_Trident_Inv);

// Clear Missile Inventory Items
instance_destroy(obj_Basic_Missile_Inv);
instance_destroy(obj_Homing_Missile_Inv);
instance_destroy(obj_Missile_Barrage_Inv);

// Clear Augments

// Clear Skins
