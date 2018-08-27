// Stop Moving
path_end();
    
// Generate Random Explosions
var choice = irandom(3);

if (choice == 0) {
    instance_create(random_range(obj_Fleet_Commander_Daemeon.x-(sprite_width/2),obj_Fleet_Commander_Daemeon.x+(sprite_width/2)), random_range(obj_Fleet_Commander_Daemeon.y-(sprite_height/2),obj_Fleet_Commander_Daemeon.y+(sprite_height/2)), obj_Explosion_Small);
    effect_create_above(ef_smoke, random_range(obj_Fleet_Commander_Daemeon.x-(sprite_width/2),obj_Fleet_Commander_Daemeon.x+(sprite_width/2)), random_range(obj_Fleet_Commander_Daemeon.y-(sprite_width/2),obj_Fleet_Commander_Daemeon.y+(sprite_width/2)), 0, c_ltgray);
}
else if (choice == 1) {
    instance_create(random_range(obj_Fleet_Commander_Daemeon.x-(sprite_width/2),obj_Fleet_Commander_Daemeon.x+(sprite_width/2)), random_range(obj_Fleet_Commander_Daemeon.y-(sprite_height/2),obj_Fleet_Commander_Daemeon.y+(sprite_height/2)), obj_Explosion_Medium);
    effect_create_above(ef_smoke, random_range(obj_Fleet_Commander_Daemeon.x-(sprite_width/2),obj_Fleet_Commander_Daemeon.x+(sprite_width/2)), random_range(obj_Fleet_Commander_Daemeon.y-(sprite_height/2),obj_Fleet_Commander_Daemeon.y+(sprite_height/2)), 1, c_gray);
}
else if (choice == 2) {
    instance_create(random_range(obj_Fleet_Commander_Daemeon.x-(sprite_width/2),obj_Fleet_Commander_Daemeon.x+(sprite_width/2)), random_range(obj_Fleet_Commander_Daemeon.y-(sprite_height/2),obj_Fleet_Commander_Daemeon.y+(sprite_height/2)), obj_Explosion_Large);
    effect_create_above(ef_smoke, random_range(obj_Fleet_Commander_Daemeon.x-(sprite_width/2),obj_Fleet_Commander_Daemeon.x+(sprite_width/2)), random_range(obj_Fleet_Commander_Daemeon.y-(sprite_height/2),obj_Fleet_Commander_Daemeon.y+(sprite_height/2)), 2, c_dkgray);
}
    
// Set Explosion Timer
if (!explosion_imminent)
{
    alarm[2] = 180;
    explosion_imminent = true;
}
