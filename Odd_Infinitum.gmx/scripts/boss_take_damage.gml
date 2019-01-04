///  boss_take_damage(damage)

// Play damaged sound
audio_play_sound(snd_Enemy_Impact, 2, false);

// Remove damage amount from health
boss_health_taken = argument0 + irandom_range(-2,2);
self.damage_taken = boss_health_taken;
self.boss_health -= boss_health_taken;

// Set damage indicator to true
damaged = true;

// Set timer
alarm[1] = 3.25
alarm[3] = 60;

// Destroy laser or missile
instance_destroy(other)
