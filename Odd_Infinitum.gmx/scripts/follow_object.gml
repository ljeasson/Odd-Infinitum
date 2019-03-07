/// follow_object(object_to_follow, following_speed, face_target, angle_diff);
// Follow an object

object_to_follow = argument0;
following_speed = argument1;
face_target = argument2;
angle_diff = argument3;

// If object to follow exists
if (instance_exists(object_to_follow))
{
    // Move towards object at set speed
    move_towards_point(object_to_follow.x, object_to_follow.y, following_speed);
    
    // Face towards object
    if (face_target) image_angle = point_direction(x, y, object_to_follow.x, object_to_follow.y) + angle_diff;
}
else
    // Otherwise destroy self
    instance_destroy();
    
