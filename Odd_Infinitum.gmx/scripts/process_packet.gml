/// process_packet(buffer)

var buffer = argument0;
var message_id = buffer_read(buffer, buffer_u8);

var moveX = buffer_read(buffer, buffer_s16);
var moveY = buffer_read(buffer, buffer_s16);
var action = buffer_read(buffer, buffer_u16);
// more buffer reading ...

// Do something with data
switch (action)
{
    case 1:
        fire_laser(remotex,remotey);
        break;
    default:
        remotex = moveX;
        remotey = moveY;
        break;
        
}
