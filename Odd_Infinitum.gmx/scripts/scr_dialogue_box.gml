/// scr_dialogue_box("Text", Name, Font)

dialogue_box = instance_create(room_width/2-450, room_height-180, obj_dialogue_box);
with (dialogue_box)
{
    name = argument1;
    padding = 16;
    maxlength = 512;
    text = argument0;
    spd = 1;
    font = argument2;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    text_width = string_width_ext(text, font_size + (font_size/2), maxlength);
    text_height = string_height_ext(text, font_size + (font_size/2), maxlength);
    
    box_width = (room_width-32) - 256;  
    box_height = (room_width-256) - (room_height-64)
    //box_width = text_width + (padding*2);
    //box_height = text_height + (padding*2);
}
