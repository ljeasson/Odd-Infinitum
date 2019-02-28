///  boss_take_damage(damage)

// Play damaged sound
audio_play_sound(snd_Enemy_Impact, 2, false);

// Screen Shake
instance_create(x,y,screen_shake_boss_death);

// Remove damage amount from health
self.boss_health -= argument0;

// Set damage indicator to true
damaged = true;

// Set timer
alarm[1] = 7.5

// Destroy laser or missile
instance_destroy(other)
