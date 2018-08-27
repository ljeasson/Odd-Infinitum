/// scr_player_damaged();
// Reads input from keyboard

// Check Dodge
if (player_dodge == 0)
    player_speed = 4;
else
    player_speed = 8;

// Movement controls
key_up = keyboard_check(vk_up) || (gamepad_axis_value(0,gp_axislv) < 0);
key_down = keyboard_check(vk_down) || (gamepad_axis_value(0,gp_axislv) > 0);
key_left = keyboard_check(vk_left) || (gamepad_axis_value(0,gp_axislh) < 0);
key_right = keyboard_check(vk_right) || (gamepad_axis_value(0,gp_axislh) > 0);

// Lasers and Missile controls
key_laser = keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0,gp_face1));
key_dodge_pressed = keyboard_check_pressed(vk_shift) || (gamepad_button_check_pressed(0,gp_shoulderrb));
key_dodge_released = keyboard_check_released(vk_shift) || (gamepad_button_check_released(0,gp_shoulderrb));

// Read movement controls
if (key_left and x > 0) { x -= player_speed };
if (key_right and x <= room_width - 56) { x += player_speed };
if (key_up and y > 80) { y -= player_speed };
if (key_down and y <= room_height - 32) { y += player_speed };

// Set sprite to damaged
obj_Player.sprite_index = spr_Player_Damaged;

// Read laser and missile controls
// Laser
if (key_laser) 
{
    // Play Laser sound
    var pitch = audio_sound_pitch(snd_Player_Laser_Regain, random_range(0.85,1.15));
    audio_play_sound(snd_Player_Laser_Regain, pitch, false);    

    // Create Spark Effect
    effect_create_above(ef_spark,x+48,y+24,1,c_blue);
    
    // Create instance of laser moving to the right with a speed of 8
    var laser = instance_create(x+48,y+24,obj_Regain_Laser);
    laser.direction = 0;
    laser.speed = global.laser_speed;
    
    // Decrease overheat amount by 20
    global.overheat -= 15;
    
    // If laser is fired with no health, take damage
    if (global.overheat <= 0)
    {
        health -= 2;
    }
}

// Dodge
if (key_dodge_pressed)
{
    obj_Player.image_blend = c_aqua;
    player_dodge = 1;
}
if (key_dodge_released)
{
    obj_Player.image_blend = c_white;
    player_dodge = 0;
}
