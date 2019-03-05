/// callout() 
// Creates a Callout object with corresponding text based
// on keyboard input

text = argument0;

if (!instance_exists(obj_Callout))
{
    var c = instance_create(x,y,obj_Callout);
    c.callout_text = text;
}
