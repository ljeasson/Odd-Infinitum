// generate_random_sequence(min_value, max_value)
min_value = argument0;
max_value = argument1;

// Create list
list = ds_list_create();

// Populate list
for (var i = min_value; i < max_value; i++)
    list[| i] = i;
    
// Shuffle list
ds_list_shuffle(list);

// Create array
size = ds_list_size(list);
var array;

// Transfer list to array
for (var i = 0; i < size; i++)
    array[i] = list[| i];
    
return array;
