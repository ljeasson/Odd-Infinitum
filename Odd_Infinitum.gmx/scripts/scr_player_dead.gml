/// scr_player_dead()
// Player is dead; restart level and replenish health

audio_stop_all();
instance_create(0,0,player_death_controller);
instance_destroy();
