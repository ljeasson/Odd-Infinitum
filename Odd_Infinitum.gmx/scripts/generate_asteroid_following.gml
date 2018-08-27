//Initialize Varibles
object = argument0;
DIRECTION = argument1;

//Set X and Y value depending on direction
if (DIRECTION == 0) //RIGHT
{
    X = -32;
    Y = random(room_height)+80;
}
else if (DIRECTION == 180) //LEFT
{
    X = room_width+32;
    Y = random(room_height)+80;
}
else if (DIRECTION == 90) //UP
{
    X = random(room_width);
    Y = -32;
}
else if (DIRECTION == 270) //DOWN
{
    X = random(room_width);
    Y = 700+32;
}
    

//Set move_towards target, else travel across screen
var inst = instance_create(X, Y, object);

