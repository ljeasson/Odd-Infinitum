///Randomly spit asteroids in second phase

// Play First Voice
if (!voice_2_played){
    audio_play_sound(vc_Core_Destroyer_2, 2, false);
    scr_text("Capacity Exceeded... Discharging payload...", 0.5, room_width/2, room_height/2);
    voice_2_played = true;
}

// Change Core Destroyer Sprite
if (sprite_index != spr_Core_Destroyer_2)
    obj_Core_Destroyer.sprite_index = spr_Core_Destroyer_2;    
//Change blue ring from inward to outward
obj_Blue_Ring.sprite_index = spr_Blue_Ring_Outward;

// Rotate Clock-Wise
image_angle += 2;
    
//Deactivate reverse asteroid generator
instance_destroy(asteroid_generator_reverse);
    
if (lock == false)
{
    //Generate 3 big asteroids, 5 medium asteroids, or ten small asteroids
    selection = irandom(2);
    if (selection == 0)
    {
        //50 small asteroids - Random Spread Pattern
        for (i=0; i<100; i++)
        {
            var asteroid_instance = instance_create(random_range(obj_Core_Destroyer.x-100,obj_Core_Destroyer.x+100),random_range(obj_Core_Destroyer.y-100,obj_Core_Destroyer.y+100),obj_Small_Asteroid_1);
            asteroid_instance.speed = 6;
            asteroid_instance.direction = random_range(90,270);
        }
        lock = true;
        alarm[0] = 120;
    }
    else if (selection == 1)
    {
        //20 medium asteroids - Fixed Spread Pattern
        for (i=0; i<20; i++)
        {
            var asteroid_instance = instance_create(obj_Core_Destroyer.x,obj_Core_Destroyer.y,obj_Medium_Asteroid_1);
            asteroid_instance.speed = 5;
            asteroid_instance.direction = 90 + (10 * i);
        }
        lock = true;
        alarm[0] = 180;
    }
    else if (selection == 2)
    {
        //5 Large asteroids - Stream Pattern
        for (i=0; i<10; i++)
        {
            var asteroid_instance = instance_create(random_range(obj_Core_Destroyer.x-150,obj_Core_Destroyer.x+150),random_range(obj_Core_Destroyer.y-150,obj_Core_Destroyer.y+150),obj_Large_Asteroid_1);
            asteroid_instance.speed = 5;
            asteroid_instance.direction = 180;
        }
        lock = true;
        alarm[0] = 240;
    }
}
