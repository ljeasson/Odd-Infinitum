/// parry()
// Creates a Parry Shot after a successful counter

// Create Parry Shot
instance_change(obj_Parry_Shot, true);

// If Buckler Repair Augment is equipped, regain health
if (global.augment == "Buckler Repair")  regain_health();
// If Buckler Reload Augment is equipped, reload missile
if (global.augment == "Buckler Reload")  missile_regain();
