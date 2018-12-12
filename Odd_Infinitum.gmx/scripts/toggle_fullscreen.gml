/// toggle_fullscreen
// Swtich between fullscreen and windowed screen

if window_get_fullscreen() 
{
    window_set_fullscreen(false);
    global.full_screen = false;
}
else 
{
    window_set_fullscreen(true);
    global.full_screen = true;
}
