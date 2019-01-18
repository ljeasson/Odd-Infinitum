/// scr_text("Text", speed, font, time_to_kill, x, y)

txt = instance_create(argument4, argument5, obj_text);
with (txt)
{
    padding = 16;
    maxlength = view_wview[0]; // Change later
    text = argument0;
    spd = argument1;
    font = argument2;
    time_to_kill = argument3;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    text_width = string_width_ext(text, font_size + (font_size/2), maxlength);
    text_height = string_height_ext(text, font_size + (font_size/2), maxlength);
    
    box_width = text_width + (padding*2);
    box_height = text_height + (padding*2);
}
