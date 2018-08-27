/// scr_player_normal();
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
key_alt_laser = keyboard_check_pressed(ord('G')) || (gamepad_button_check_pressed(0,gp_face2));
key_alt_laser_hold = keyboard_check(ord('G')) || (gamepad_button_check(0,gp_face2));
key_missile = keyboard_check_pressed(ord('F')) || (gamepad_button_check_pressed(0,gp_face3));
key_missile_regain = keyboard_check_pressed(ord('R')) || (gamepad_button_check_pressed(0,gp_face4));
key_dodge_pressed = keyboard_check_pressed(vk_shift) || (gamepad_button_check_pressed(0,gp_shoulderrb));
key_dodge_released = keyboard_check_released(vk_shift) || (gamepad_button_check_released(0,gp_shoulderrb));

// Read movement controls
if (key_left and x > 0) { x -= player_speed };
if (key_right and x <= room_width - 56) { x += player_speed };
if (key_up and y > 80) { y -= player_speed };
if (key_down and y <= room_height - 32) { y += player_speed };

// Set sprite to normal
obj_Player.sprite_index = spr_Player;

// Read laser and missile controls
// Laser
if (key_laser) 
{
    // Play Laser sound
    var pitch = audio_sound_pitch(snd_Player_Laser, random_range(0.85,1.15));
    audio_play_sound(snd_Player_Laser, pitch, false);
    
    // Create Spark Effect
    effect_create_above(ef_spark,x+48,y+24,1,c_aqua);
    
    // Create instance of laser moving to the right with a speed of 8
    if (player_dodge == 0)
    {
        var laser = instance_create(x+48,y+24,obj_Laser);
        laser.direction = 0;
        laser.speed = global.laser_speed;
    }
    else
    {
        var laser = instance_create(x+48,y+24,obj_Laser_Short_Range);
        laser.direction = 0;
        laser.speed = global.laser_speed;
    }
    
    // Decrease overheat amount by 20
    global.overheat -= 20;
    
    // If laser is fired with no health, take damage
    if (global.overheat <= 0)
    {
        player_take_damage_heat(2);
    }
}

// Dodge
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

// Missile
if (key_missile and global.missile_count > 0)
{
    // Normal Missile
    if (global.missile)
    {
        // Create Effect
        effect_create_above(ef_smoke,x+48,y+24,0,c_white);    
    
        // Play Missile sound
        audio_play_sound(snd_Player_Missile, 1, false);
    
        // Create instance of missile moving to the right with a speed of 6
        var missile = instance_create(x+48,y+24,obj_Missile);
        missile.direction = 0;
        missile.speed = 6;
        
        // Decrease overheat mount by 30
        global.overheat -= 30;
        
        // Decrease missile count by 1
        global.missile_count -= 1;
    }
    
    // Homing Missile   
    if (global.homing_missile)
    {
        // Create Effect
        effect_create_above(ef_smoke,x+48,y+24,0,c_white);    
    
        // Create instance of homing missile
        instance_create(x+48,y+24,obj_Homing_Missile);
        
        // Decrease overheat mount by 35
        global.overheat -= 35;
        
        // Decrease missile count by 1
        global.missile_count -= 1;
    }
    
    // Missile Barrage
    if (global.missile_barrage and global.missile_count >= 3)
    {
        // Create Effect
        effect_create_above(ef_smoke,x+48,y+24,0,c_white);    
    
        // Create instance of missile barrage
        instance_create(x+48,y+24,obj_Missile_Barrage);
        
        // Decrease overheat mount by 40
        global.overheat -= 40;
        
        // Decrease missile count by 3
        global.missile_count -= 3;  
    }  
}

if (key_missile_regain)
{
    // Play Sound
    audio_play_sound(snd_Missile_Regain, 1, false);

    // Create Effect
    effect_create_above(ef_ellipse,x+24,y+16,1,c_ltgray);    
    
    // Lose 20 health points and gain 1 missile
    health -= 20;
    global.missile_count += 1;
}

if (key_alt_laser)
{
    // Triple shot
    if (global.triple_shot)
    {
        // Create 3 triple shot instances
        shot1 = instance_create(x+48,y+24,obj_Triple_Shot);
        shot1.direction = 0;
        shot1.speed = 8;
    
        shot2 = instance_create(x+48,y+24,obj_Triple_Shot);
        shot2.direction = 30;
        shot2.speed = 8;
    
        shot3 = instance_create(x+48,y+24,obj_Triple_Shot);
        shot3.direction = -30;
        shot3.speed = 8;
    
        // Decrease overheat by 25
        global.overheat -= 25;
    }
    
    // Giant Laser
    if (global.giant_laser)
    {
        // Create giant laser instance
        instance_create(x+48,y+24,obj_Giant_Laser);
        
        // Decrease overheat by 50
        global.overheat -= 50;
    }
}

if (key_alt_laser_hold)
{
    // Rapid fire
    if (global.rapid_fire)
    {
        if (fire_again)
        {
            // Create rapid fire instance
            instance_create(x+48,y+24,obj_Rapid_Fire);
        
            // Decrease overheat by 5
            global.overheat -= 5;
        
            // Disable fire_again
            fire_again = false
            alarm[1] = global.shot_timer;
        }
    }
}
