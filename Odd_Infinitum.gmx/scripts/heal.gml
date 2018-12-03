// heal(x,y)
// Heals player at the expense of two missiles, but only if augment is equipped

// Check if "Quick Repair" augment is equipped
if (global.augment == "quick_repair" && global.missile_count >= 2)
{
    // Create ellipse
    //effect_create_above(ef_ellipse, obj_Player.x+24, obj_Player.y+16, 1, c_lime);
    instance_create(X,Y,obj_Health_Regain_Effect);

    // Play audio
    audio_play_sound(snd_Health_Regain, 1, false);

    // Deplete missile
    global.missile_count -= 2;

    // Increase health
    health += 35;
}
