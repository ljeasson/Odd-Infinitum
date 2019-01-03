/// rotate_to_angle(angle, rotation_speed)
// Rotates sprite to a specified angle

new_angle = argument0;
rotation_speed = argument1;

if (image_angle != new_angle)
{
    if (new_angle >= 0)
        image_angle += rotation_speed;   
    if (new_angle < 0)
        image_angle -= rotation_speed;
}
