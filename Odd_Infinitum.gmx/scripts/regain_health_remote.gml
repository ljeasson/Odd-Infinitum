/// Regain Health

// Create ellipse
//effect_create_above(ef_ellipse, obj_Player.x+24, obj_Player.y+16, 1, c_lime);
var health_ring = instance_create(x,y,obj_Health_Regain_Effect);
health_ring.object_to_follow = obj_Player_Remote;

// Play audio
audio_play_sound(snd_Health_Regain, 1, false);

// Increase health
remote_health += 5

// Destroy Regain Laser
instance_destroy(other);
