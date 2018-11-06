// Encode movement data and transmit
action = argument0;

buffer_seek(send_buffer, buffer_seek_start,0);
buffer_write(send_buffer, buffer_u8,1); //id. Use different ones for different msg types
buffer_write(send_buffer, buffer_s16,myx);
buffer_write(send_buffer, buffer_s16,myy);
buffer_write(send_buffer, buffer_u8,action);
network_send_udp(socket,remote_ip,remote_port,send_buffer,buffer_tell(send_buffer));
