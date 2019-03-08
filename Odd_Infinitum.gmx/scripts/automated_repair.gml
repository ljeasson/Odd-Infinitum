/// automated_repair(time_to_heal, heal_amount)
// Automatically heals player at a constant rate, but only if augment is equipped

time_to_heal = argument0;
heal_amount = argument1;

// Check if "Automated Repair" augment is equipped
if (global.augment == "Automated Repair" && obj_Player.counter_automated_repair == time_to_heal)
{
    // Increase health
    health += heal_amount;
    
    // Reset Counter
    obj_Player.counter_automated_repair = 0;
}

// Update Counter
obj_Player.counter_automated_repair += 1;
