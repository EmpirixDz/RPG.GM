///scr_slime

if (instance_exists(obj_player)){
phy_position_x += sign(obj_player.x - x)*spd; 
phy_position_y += sign(obj_player.y - y)*spd;
}
if (hp <= 0){
    slime_state = scr_slime_death;
}
