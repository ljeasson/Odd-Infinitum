///  boss_take_damage(damage)

// Play damaged sound
audio_play_sound(snd_Enemy_Impact, 2, false);

// Remove damage amount from health
if (other == obj_Charge_Shot)
{
    if (other.power_level = 1)
        self.boss_health -= argument0;
    if (other.power_level = 2)
        self.boss_health -= (argument0 * 2);
    if (other.power_level = 3)
        self.boss_health -= (argument0 * 3);
}
else
    self.boss_health -= argument0;

// Set damage indicator to true
damaged = true;

// Set timer
alarm[1] = 3.25

// Destroy laser or missile
instance_destroy(other)
