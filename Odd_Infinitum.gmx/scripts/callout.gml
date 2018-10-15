/// Creates a Callout
text = argument0;

if (!instance_exists(obj_Callout))
{
    var callout = instance_create(x,y,obj_Callout);
    callout.callout_text = text;
}
