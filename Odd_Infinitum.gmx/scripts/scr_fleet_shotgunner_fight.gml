/// scr_fleet_shotgunner_fight()

// Set Movement Path
if (path_index == -1)
    path_start(path_Defector_2, 4, path_action_reverse, true);   
    
// Randomly Generate Red Lasers in a spread pattern
if (attack_lock == false)
{
    // Upper 45 degrees of spread pattern
    for (var i = 180; i > 135; i-=15)
    {
        var spread = instance_create(x,y,obj_Red_Laser);
        spread.direction = i;
        spread.image_angle = spread.direction;
        spread.speed = 8;
    }
    // Lower 45 degrees of spread pattern 
    for (var i = 180; i < 225; i+=15)
    {
        var spread = instance_create(x,y,obj_Red_Laser);
        spread.direction = i;
        spread.image_angle = spread.direction;
        spread.speed = 8;
    }        
    
    // Lock Attack Window
    attack_lock = true;
    // Set Timer for When to Attack Again
    alarm[0] = random_range(30,120);
}
    
// Generate Large Seeker Orbs
if (instance_number(obj_Red_Seeker_Large) < 1 && Chance(0.5,100))
    instance_create(x,y,obj_Red_Seeker_Large); 
