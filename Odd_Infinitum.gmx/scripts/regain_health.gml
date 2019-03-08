/// regain_health(amount)

amount = argument0;

// Create ellipse
instance_create(x,y,obj_Health_Regain_Effect);

// Play audio
audio_play_sound(snd_Health_Regain, 1, false);

// Increase health
health += amount;

// Destroy Regain Laser
instance_destroy(obj_Regain_Laser);
