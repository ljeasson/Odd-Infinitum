/// Movement
if (key_left and x > 0) { x -= player_speed };
if (key_right and x <= room_width - 56) { x += player_speed };
if (key_up and y > 80) { y -= player_speed };
if (key_down and y <= room_height - 32) { y += player_speed };
