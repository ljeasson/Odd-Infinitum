// If there are no Defectors present

var mini_boss = 0;

//if (mini_boss_num < 3 && instance_number(obj_Defector_2_Combat) < 1)
if (/*spawn_another == true &&*/ mini_boss_num >= 0 && instance_number(asset_get_index("obj_Defector_" + string(mini_boss_num+1) + "_Combat")) < 1) 
{
    // Create one based off initial random chance
    mini_boss = instance_create(room_width/2 + 256, room_height/2, asset_get_index("obj_Defector_" + string(mini_boss_num+1) + "_Combat"));    
    spawn_another = false;

    //if (spawn_another == false && instance_number(mini_boss) == 0)
    //    alarm[0] = 180;
}  

// If all Defectors are defeated, move to fight
if (mini_boss_num == 3)
    state = fleet_commander_states.fight;
