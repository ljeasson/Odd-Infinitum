/// process_packet(buffer)

var buffer = argument0;
var message_id = buffer_read(buffer, buffer_u8);

var moveX = buffer_read(buffer, buffer_s16);
var moveY = buffer_read(buffer, buffer_s16);
var action = buffer_read(buffer, buffer_u8);
// more buffer reading ...

// Do something with data
remotex = moveX;
remotey = moveY;
if (instance_exists(obj_Player_Remote))
    obj_Player_Remote.action = action;
if (instance_exists(obj_Player_Overworld_Remote))
    obj_Player_Overworld_Remote.action = action;
