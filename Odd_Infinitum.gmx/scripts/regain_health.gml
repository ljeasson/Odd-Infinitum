/// Regain Health

// Create ellipse
effect_create_above(ef_ellipse, obj_Player.x+24, obj_Player.y+16, 1, c_lime);

// Play audio
audio_play_sound(snd_Health_Regain, 1, false);

// Increase health
health += 5

// Destroy Regain Laser
instance_destroy(other);
