/// scr_player_dead()
// Player is dead; restart level and replenish health

// Emergency Repair
if (!obj_Player.emergency_repair_used)
{
    emergency_repair();
    state = player_states.normal;
}

// Stop all audio
audio_stop_all();

// Instantiae Player Death Controller
// Carries out player post-death action
instance_create(0,0,player_death_controller);

// Destroy Player
instance_destroy();
