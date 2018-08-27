///  boss_take_damage(damage)

// Play damaged sound
audio_play_sound(snd_Enemy_Impact, 2, false);

// Remove damage amount from health
self.boss_health -= argument0;

// Set damage indicator to true
damaged = true;

// Set timer
alarm[1] = 3.25

// Destroy laser or missile
instance_destroy(other)
