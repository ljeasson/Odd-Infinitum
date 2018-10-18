/// Regain Health

// Create ellipse
//effect_create_above(ef_ellipse, obj_Player.x+24, obj_Player.y+16, 1, c_lime);
instance_create(x,y,obj_Health_Regain_Effect);

// Play audio
audio_play_sound(snd_Health_Regain, 1, false);

// Increase health
health += 5

// Destroy Regain Laser
instance_destroy(other);
