/// supply_drop()
// Creates a supply container that drops extra health, 
// extra missile, or extra damage

// Check if "Supply Drop" augment is equipped
if (global.augment == "Supply Drop" && instance_exists(obj_Player))
{
    if (obj_Player.counter_supply_drop >= 2400)
    {
        // Drop supply container
        instance_create(room_width/4, -64, obj_Supply_Container);
    
        // Reset Supply Drop counter
        obj_Player.counter_supply_drop = 0;
    }
}
