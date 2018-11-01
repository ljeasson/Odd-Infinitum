// Encode movement data and transmit

// 1 = Fire Laser
// 2 = Fire Alt Laser
// 3 = Fire Missile
// 4 = Speed Boost
// 5 = Energy Buckler

action = argument0;

buffer_seek(send_buffer, buffer_seek_start,0);
buffer_write(send_buffer, buffer_u8,2); //id. Use different ones for different msg types
buffer_write(send_buffer, buffer_u16,action);
network_send_udp(socket,remote_ip,remote_port,send_buffer,buffer_tell(send_buffer));
