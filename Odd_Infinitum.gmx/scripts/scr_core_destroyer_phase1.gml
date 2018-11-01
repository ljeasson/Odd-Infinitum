/// Pull asteroids from the left side of the screen in first phase

// Play First Voice
if (!voice_1_played){
    audio_play_sound(vc_Core_Destroyer_1, 2, false);
    scr_text("Target Acquired... #Begin gathering payload...", 0.5, room_width/2, room_height/2);
    voice_1_played = true;
}

// Rotate Clock-Wise
image_angle -= 1;

// Set Sprite
obj_Core_Destroyer.sprite_index = spr_Core_Destroyer_1;
