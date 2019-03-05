/// missile_reload(health_decrease)
// Replenishes missile at the expense of some health

health_decrease = argument0;

if (!instance_exists(obj_Energy_Buckler_Persistent))
{
    // Play Sound
    audio_play_sound(snd_Missile_Regain, 1, false);

    // Create Effect
    //effect_create_above(ef_ellipse,x+24,y+16,1,c_ltgray);    
    var ring = instance_create(x,y,obj_Ring);   

    // Decrease health by decrease amount
    health -= health_decrease;
    
    // Gain 2 missiles
    global.missile_count += 2;
}
