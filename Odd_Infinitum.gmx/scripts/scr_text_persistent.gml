/// scr_text_persistent("Text", speed, font, x, y)

txt = instance_create(argument3, argument4, obj_text_persistent);
with (txt)
{
    padding = 16;
    maxlength = view_wview[0]; // Change later
    text = argument0;
    spd = argument1;
    font = argument2;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    text_width = string_width_ext(text, font_size + (font_size/2), maxlength);
    text_height = string_height_ext(text, font_size + (font_size/2), maxlength);
    
    box_width = text_width + (padding*2);
    box_height = text_height + (padding*2);
}
