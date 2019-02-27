// dodge()
// Dodge funcionality

if (!instance_exists(obj_Energy_Buckler_Persistent))
{
    if (key_dodge_pressed)
    {
        // Audio
        audio_play_sound(snd_Speed_Boost_On, 1, false);
        // Color
        obj_Player.image_blend = c_aqua;
        // Enable Dodge
        player_dodge = 1;
    }
    if (key_dodge_released)
    {
        // Color
        obj_Player.image_blend = c_white;
        // Disable Dodge
        player_dodge = 0;
    }
}

// Create Blur Effect by spawning fading player spirtes
if (player_dodge)
    instance_create(x,y,obj_Player_Fade);
