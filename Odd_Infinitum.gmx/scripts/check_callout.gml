/// check_callout()
// Continually checks for when a Callout button (1 through 0) 
// is pressed and outputs the corresponding callout based on global vars

if (keyboard_check_pressed(ord('1'))) 
{
    callout(global.callout_1);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(71);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(71);
}
if (keyboard_check_pressed(ord('2'))) 
{
    callout(global.callout_2);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(72);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(72);
}
if (keyboard_check_pressed(ord('3'))) 
{
    callout(global.callout_3);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(73);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(73);
}
if (keyboard_check_pressed(ord('4'))) 
{
    callout(global.callout_4);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(74);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(74);
}
if (keyboard_check_pressed(ord('5'))) 
{
    callout(global.callout_5);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(75);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(75);
}
if (keyboard_check_pressed(ord('6')))
{
    callout(global.callout_6);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(76);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(76);
}
if (keyboard_check_pressed(ord('7'))) 
{
    callout(global.callout_7);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(77);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(77);
}
if (keyboard_check_pressed(ord('8'))) 
{
    callout(global.callout_8);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(78);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(78);
}
if (keyboard_check_pressed(ord('9'))) 
{
    callout(global.callout_9);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(79);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(79);
}
if (keyboard_check_pressed(ord('0'))) 
{
    callout(global.callout_10);
    if (instance_exists(obj_Server))
        write_buffer_SERVER(70);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(70);
}
