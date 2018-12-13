/// Follow an object

object_to_follow = argument0;
following_speed = argument1;

// If object to follow exists
if (instance_exists(object_to_follow))
{
    // Move towards object at set speed
    move_towards_point(object_to_follow.x, object_to_follow.y, following_speed);
    
    // Face towards object
    image_angle = point_direction(x, y, object_to_follow.x, object_to_follow.y);
}
else
    // Otherwise destroy self
    instance_destroy();
    
