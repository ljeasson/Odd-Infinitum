/// Rapid Fire

if (fire_again)
{
    // Play Laser sound
    audio_play_sound(snd_Seeker_Shot, 2, false);

    // Create rapid fire instance
    instance_create(x+48,y+24,obj_Seeker_Shot);
        
    // Decrease overheat by 5
    global.overheat -= 10;
        
    // Disable fire_again
    fire_again = false
    alarm[1] = global.shot_timer;
}
