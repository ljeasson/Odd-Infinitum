/// scr_item_description("Name", "Description", Cost, Energy Use, x, y)

item_description = instance_create(argument4, argument5, obj_item_description);
with (item_description)
{
    padding = 16;
    maxlength = 256;
    name = argument0;
    desc = argument1;
    cost = argument2;
    e_use = argument3;
    text = string(name) + "##" 
            + string(desc) 
            + "##Cost: " + string(cost) 
            + "#Energy Use: " + string(e_use);
    spd = 1;
    font = UI_Font;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    text_width = string_width_ext(text, font_size + (font_size/2), maxlength);
    text_height = string_height_ext(text, font_size + (font_size/2), maxlength);
    
    box_width = text_width + (padding*2);
    box_height = text_height + (padding*2);
}
