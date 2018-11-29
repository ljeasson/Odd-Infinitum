/// instance_create_once(x,y,object)
/// Used for creating one instance of any objects in a step event

X = argument0;
Y = argument1;
object = argument2;

if (!instance_exists(object))
    instance_create(X,Y,object);
