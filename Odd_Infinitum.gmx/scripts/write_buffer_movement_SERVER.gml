// Encode movement data and transmit
buffer_seek(send_buffer, buffer_seek_start,0);
buffer_write(send_buffer, buffer_u8,2); //id. Use different ones for different msg types
buffer_write(send_buffer, buffer_s16,myx);
buffer_write(send_buffer, buffer_s16,myy);
network_send_udp(socket,remote_ip,remote_port,send_buffer,buffer_tell(send_buffer));
