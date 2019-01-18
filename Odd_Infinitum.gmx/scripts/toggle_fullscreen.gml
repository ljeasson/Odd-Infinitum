/// toggle_fullscreen()
// Switch between fullscreen and windowed screen

global.full_screen = !global.full_screen;

if window_get_fullscreen() 
    window_set_fullscreen(false);
else 
    window_set_fullscreen(true);

