///scr_move_state
scr_get_input();

if (Dash){
    state = scr_dash_state;
    alarm[0] = room_speed/12;
}

//Get the player direction
dir = point_direction(0, 0, xaxis, yaxis);
 
if ( xaxis == 0 and yaxis == 0){
    len = 0;
} else {
    len = spd;
}

//Get hspeed and vspeed
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Movement
phy_position_x += hspd;
phy_position_y += vspd

image_speed = .1;
if (len == 0) image_index = 0;
if (vspd > 0){
    sprite_index = spr_player_face;
} else if (vspd < 0) {
    sprite_index = spr_player_back;
}

if (hspd > 0){
    sprite_index = spr_player_right;
} else if (hspd < 0) {
    sprite_index = spr_player_left;
}

