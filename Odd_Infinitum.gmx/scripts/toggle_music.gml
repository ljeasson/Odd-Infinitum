/// toggle_music()
// Turn on and off music

global.enable_music = !global.enable_music;

if (global.enable_music)
    audio_resume_all();
else
    audio_pause_all();
    
