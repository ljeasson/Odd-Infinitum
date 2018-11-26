/// scr_remote_player_dead()
// Remote Player is dead; simply destroy

// Destroy UI Controller
instance_destroy(UI_controller_remote);

// Destroy Remote Player
instance_destroy();
