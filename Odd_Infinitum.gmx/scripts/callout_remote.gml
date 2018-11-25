// callout() 
// Creates a Callout object with corresponding text based
// on keyboard input

text = argument0;

if (!instance_exists(obj_Callout))
{
    var c = instance_create(x,y,obj_Callout);
    c.object_to_follow = obj_Player_Remote;
    c.callout_text = text;
}
