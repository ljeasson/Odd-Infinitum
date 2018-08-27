//Initialize Varibles
object = argument0;
DIRECTION = argument1;
SPEED = argument2;

//Set X and Y value depending on direction
if (DIRECTION == 0) //RIGHT
{
    X = -32;
    Y = random(room_height)+80;
}
else if (DIRECTION == 180) //Left
{
    X = room_width+32;
    Y = random(room_height)+80;
}
    
//Set move_towards target, else travel across screen
var inst = instance_create(X, Y, object);
inst.direction = DIRECTION;
inst.speed = SPEED;
motion_add(inst.direction, inst.speed);



