/// Follow an object

object_to_follow = argument0;
following_speed = argument1;

// If object to follow exists
if (instance_number(object_to_follow) > 0)
{
    // Move towards object at set speed
    move_towards_point(object_to_follow.x, object_to_follow.y, following_speed);
}
else
    // Otherwise destroy self
    instance_destroy();
    
