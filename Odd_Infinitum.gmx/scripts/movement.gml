/// Movement
if (key_left and x > 0) 
{ 
    x -= player_speed;
    
    if (instance_exists(obj_Server))
        write_buffer_SERVER(0);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(0);
}
if (key_right and x <= room_width - 56) 
{ 
    x += player_speed 
    
    if (instance_exists(obj_Server))
        write_buffer_SERVER(0);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(0);
}
if (key_up and y > 80) 
{
    y -= player_speed 
    
    if (instance_exists(obj_Server))
        write_buffer_SERVER(0);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(0);
}
if (key_down and y <= room_height - 32) 
{
    y += player_speed 

    if (instance_exists(obj_Server))
        write_buffer_SERVER(0);
    if (instance_exists(obj_Client))
        write_buffer_CLIENT(0);    
};
