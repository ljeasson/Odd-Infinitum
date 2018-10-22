/// process_packet(buffer)

var buffer = argument0;
var message_id = buffer_read(buffer, buffer_u8);
// more buffer reading ...

//var clickx = buffer_read(buffer, buffer_u32);
//var clicky = buffer_read(buffer, buffer_u32);
var moveX = buffer_read(buffer, buffer_s16);
var moveY = buffer_read(buffer, buffer_s16);

//do something with that mouse position
remotex = moveX;
remotey = moveY;
