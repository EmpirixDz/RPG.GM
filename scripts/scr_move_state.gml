///scr_move_state
scr_get_input();
//Move Right
if (Right){
phy_position_x += spd;
sprite_index = spr_player_right;
image_speed = img_spd; 
}
//Move Left
if (Left){
phy_position_x -= spd;
sprite_index = spr_player_left;
image_speed = img_spd;
}
//Move Up
if (Up){
phy_position_y -= spd;
sprite_index = spr_player_back;
image_speed = img_spd;
}
// Move Down
if (Down){
phy_position_y += spd;
sprite_index = spr_player_face;
image_speed = img_spd;
}

if (!Up and !Down and !Left and !Right){
image_speed = 0;
image_index = 0;
}
