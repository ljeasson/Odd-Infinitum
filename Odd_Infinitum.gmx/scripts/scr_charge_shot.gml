/// Charge Shot
 
// Play Laser sound
audio_play_sound(snd_Charge_Shot, 2, false);

// Create Spark Effect
instance_create(x,y,obj_orange_spark);

// Create instance of Charge Shot
instance_create_once(x+48,y+24,obj_Charge_Shot);
