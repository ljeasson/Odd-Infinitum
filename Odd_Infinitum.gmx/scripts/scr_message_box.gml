/// scr_message("Message", x, y)

message_box = instance_create(argument1, argument2, obj_message_box);
with (message_box)
{
    padding = 16;
    maxlength = 512;
    text = argument0;
    spd = 1;
    font = UI_Font;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    text_width = string_width_ext(text, font_size + (font_size/2), maxlength);
    text_height = string_height_ext(text, font_size + (font_size/2), maxlength);
    
    box_width = text_width + (padding*2);
    box_height = text_height + (padding*2);
}
