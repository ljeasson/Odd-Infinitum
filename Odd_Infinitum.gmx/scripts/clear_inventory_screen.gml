/// clear_inventory_screen()
/// Clears current inventory screen so that new inventory screen can be drawn

instance_destroy(obj_Laser_Box); 
instance_destroy(obj_Alt_Laser_Box);
instance_destroy(obj_Missile_Box);
instance_destroy(obj_Augment_Box);

instance_destroy(obj_Basic_Laser_Inv);
instance_destroy(obj_Triple_Shot_Inv);
instance_destroy(obj_Rapid_Fire_Inv);
instance_destroy(obj_Seeker_Shot_Inv);
instance_destroy(obj_Charge_Shot_Inv);
instance_destroy(obj_Giant_Laser_Inv);

instance_destroy(obj_Basic_Missile_Inv);
instance_destroy(obj_Homing_Missile_Inv);
instance_destroy(obj_Missile_Barrage_Inv);
