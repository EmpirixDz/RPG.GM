///scr_move_state
event_inherited();
len = spd*4;


//Get hspeed and vspeed
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Movement
phy_position_x += hspd;
phy_position_y += vspd;

//Dash effect
var dash_effect = instance_create(x, y, obj_dash_effect);
dash_effect.sprite_index = sprite_index;
dash_effect.image_index = image_index;

