/// scr_player_dead()
// Player is dead; restart level and replenish health

// Stop all audio
audio_stop_all();

// Instantiae Player Death Controller
// Carries out player post-death action
instance_create(0,0,player_death_controller);

// Destroy Player
instance_destroy();
