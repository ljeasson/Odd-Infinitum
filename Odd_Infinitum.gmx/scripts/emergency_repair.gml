/// emergency_repair()
// Automatically heals player if health reaches 0, but only if augment is equipped

// Check if "Emergency Repair" augment is equipped
if (global.augment == "Emergency Repair")
{
    // Increase health
    health += 10;
    
    // Toggle indicator
    obj_Player.emergency_repair_used = true;
}
