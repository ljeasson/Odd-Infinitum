/// Triple Shot

// Play Laser sound
audio_play_sound(snd_Spread_Shot, 2, false);

// Create Spark Effect
var spark = instance_create(x,y,obj_green_spark);

// Create 3 triple shot instances
shot1 = instance_create(x+48,y+24,obj_Triple_Shot);
shot1.direction = 0;
shot1.speed = 15;
    
shot2 = instance_create(x+48,y+24,obj_Triple_Shot);
shot2.direction = 30;
shot2.speed = 15;
    
shot3 = instance_create(x+48,y+24,obj_Triple_Shot);
shot3.direction = -30;
shot3.speed = 15;
    
// Decrease overheat by 25
global.overheat -= 25;
