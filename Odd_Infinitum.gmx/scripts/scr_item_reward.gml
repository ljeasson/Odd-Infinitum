/// scr_message("Message", Item, x, y)
item_reward = instance_create(argument2, argument3, obj_message_box);
with (item_reward)
{
    padding = 16;
    maxlength = 512;
    text = argument0;
    item = argument1;
    spd = 1;
    font = UI_Font;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    text_width = string_width_ext(text, font_size + (font_size/2), maxlength);
    text_height = string_height_ext(text, font_size + (font_size/2), maxlength);
    
    box_width = text_width + (padding*2);
    box_height = text_height + (padding*2);
}
instance_create(x,y,obj_Back_To_Overworld);
