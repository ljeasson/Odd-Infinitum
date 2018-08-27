/// scr_overworld_normal();
// Reads input from keyboard

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
if (key_left and x > 0) { x -= overworld_speed };
if (key_right and x <= room_width - 56) { x += overworld_speed };
if (key_up and y > 80) { y -= overworld_speed };
if (key_down and y <= room_height - 32) { y += overworld_speed };

// Set sprite to normal
//obj_Player.sprite_index = spr_Player;


