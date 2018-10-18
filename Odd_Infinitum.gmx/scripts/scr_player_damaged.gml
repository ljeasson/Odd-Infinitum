/// scr_player_damaged();
// Reads input from keyboard

// Check Dodge
// Player speed is 8 when dodging
// Player speed is 4 otherwise
check_dodge();

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
if (obj_Player.sprite_index != spr_Player_Damaged)
    obj_Player.sprite_index = spr_Player_Damaged;

// Callouts
check_callout();

// Laser and Missile controls
// Laser
fire_regain_laser();

// Dodge
dodge();
