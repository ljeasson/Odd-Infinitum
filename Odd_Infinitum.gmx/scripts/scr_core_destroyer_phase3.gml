/// Fire laser in a predictable timing if in third phase

// Play First Voice
if (!voice_3_played){
    audio_play_sound(vc_Core_Destroyer_3, 2, false);
    scr_text("Commencing Core Destruction...", 0.5, UI_Font, room_width/2, room_height/2);
    voice_3_played = true;
}

// Flash Controller
if (flashing)
    flash_timer = flash_timer/2;
    alarm[2] = flash_timer;

// Fast Rotation CW
image_angle += 4;

// Create Asteroids
if (instance_number(asteroid_generator) < 1)
{
    var asteroids = instance_create(0,0,asteroid_generator);
    asteroids.small_asteroid = true;
    asteroids.medium_asteroid = true;
    asteroids.large_asteroid = true;
}
    
// Attack Window is Unlocked - Fire Laser
if (instance_number(obj_Core_Destroyer_Laser) < 1 && !lock && !flashing && !defeated)
{
    // Create Big Laser controller
    instance_create(x,y,core_destroyer_laser_controller);
    
    // Enable Flashing
    flashing = true;    
    
    // Lock Attack
    lock = true;
    alarm[0] = 600;
}




