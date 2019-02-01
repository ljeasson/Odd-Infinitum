/// quick_repair()
// Heals player at the expense of two missiles, but only if augment is equipped

// Check if "Quick Repair" augment is equipped
if (global.augment == "Quick Repair" && global.missile_count >= 2)
{
    // Create ellipse
    instance_create(x+24,y+16,obj_Health_Regain_Effect);

    // Play audio
    audio_play_sound(snd_Health_Regain, 1, false);

    // Deplete missile
    global.missile_count -= 2;

    // Increase health
    health += 35;
}
