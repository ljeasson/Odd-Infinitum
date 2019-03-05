/// scr_player_normal();
// Reads input from keyboard

// Check Dodge
// Player speed is 8 when dodging
// Player speed is 4 otherwise
check_dodge();

// Movement controls
key_up = keyboard_check(vk_up) || (gamepad_axis_value(0,gp_axislv) < 0) || (gamepad_axis_value(4,gp_axislv) < 0);
key_down = keyboard_check(vk_down) || (gamepad_axis_value(0,gp_axislv) > 0) || (gamepad_axis_value(4,gp_axislv) > 0);
key_left = keyboard_check(vk_left) || (gamepad_axis_value(0,gp_axislh) < 0) || (gamepad_axis_value(4,gp_axislh) < 0);
key_right = keyboard_check(vk_right) || (gamepad_axis_value(0,gp_axislh) > 0) || (gamepad_axis_value(0,gp_axislh) > 0);

// Lasers and Missile controls
key_laser = keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0,gp_face1)) || (gamepad_button_check_pressed(4,gp_face1));
key_alt_laser = keyboard_check_pressed(ord('G')) || (gamepad_button_check_pressed(0,gp_face2)) || (gamepad_button_check_pressed(4,gp_face2));
key_alt_laser_hold = keyboard_check(ord('G')) || (gamepad_button_check(0,gp_face2)) || (gamepad_button_check(4,gp_face2));
key_missile = keyboard_check_pressed(ord('F')) || (gamepad_button_check_pressed(0,gp_face3)) || (gamepad_button_check_pressed(4,gp_face3));
key_missile_regain = keyboard_check_pressed(ord('R')) || (gamepad_button_check_pressed(0,gp_face4)) || (gamepad_button_check_pressed(4,gp_face4));

// Dodge controls
key_dodge_pressed = keyboard_check_pressed(vk_shift) || (gamepad_button_check_pressed(0,gp_shoulderrb)) || (gamepad_button_check_pressed(4,gp_shoulderrb));
key_dodge_released = keyboard_check_released(vk_shift) || (gamepad_button_check_released(0,gp_shoulderrb)) || (gamepad_button_check_released(4,gp_shoulderrb));

// Energy Buckler controls
key_energy_buckler = keyboard_check_pressed(ord('T')) || (gamepad_button_check_pressed(0,gp_shoulderlb)) || (gamepad_button_check_pressed(4,gp_shoulderlb));

// Healing controls
key_use = keyboard_check_pressed(ord('E')) || (gamepad_button_check_pressed(0,gp_shoulderr)) || (gamepad_button_check_pressed(4,gp_shoulderr));;

// Set sprite to normal
if (obj_Player.sprite_index != spr_Player)
    obj_Player.sprite_index = spr_Player;

// Read movement controls
movement();

// Callouts
check_callout();

// Laser and Missile controls
// Laser
if (key_laser) 
{
    fire_laser(x,y);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(1);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(1);
}

// Alt Laser
if (key_alt_laser) 
{
    fire_alt_laser(x,y);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(2);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(2);
}
    
// Missile
if (key_missile)
{
    fire_missile(x,y);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(3);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(3);
}

// Missile Regain
if (key_missile_regain) 
{
    missile_reload(20);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(4);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(4);
}

// Energy Buckler
if (key_energy_buckler)
{
    energy_buckler();
    if (instance_exists(obj_Server))
        write_buffer_SERVER(6);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(6);
}

// Quick Repair
if (key_use)
{
    quick_repair();
    if (instance_exists(obj_Server))
        write_buffer_SERVER(7);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(7);
}

// Automated Repair
automated_repair(120,2);

// Dodge
dodge();   
