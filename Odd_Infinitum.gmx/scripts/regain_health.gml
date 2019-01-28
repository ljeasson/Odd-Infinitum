/// regain_health()

// Create ellipse
instance_create(x,y,obj_Health_Regain_Effect);

// Play audio
audio_play_sound(snd_Health_Regain, 1, false);

// Increase health
health += 5

// Destroy Regain Laser
instance_destroy(other);
