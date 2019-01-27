/// Triple Shot

// Create Spark Effect
var spark_top = instance_create(x,y,obj_orange_spark);
spark_top.x = obj_Player.x+48;
spark_top.y = obj_Player.x+24-16;

var spark_middle = instance_create(x,y,obj_orange_spark);
spark_middle.x = obj_Player.x+48;
spark_middle.y = obj_Player.x+24;

var spark_bottom = instance_create(x,y,obj_orange_spark);
spark_bottom.x = obj_Player.x+48;
spark_bottom.y = obj_Player.x+24+16;


// Create 3 triple shot instances
shot1 = instance_create(x+48,y+24-16,obj_Trident_Laser);
shot1.direction = 0;
shot1.speed = 8;
    
shot2 = instance_create(x+56,y+24,obj_Trident_Laser);
shot2.direction = 0;
shot2.speed = 8;
    
shot3 = instance_create(x+48,y+24+16,obj_Trident_Laser);
shot3.direction = 0;
shot3.speed = 8;
    
// Decrease overheat by 25
global.overheat -= 30;
