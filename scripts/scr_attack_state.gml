///scr_attack_state

//Sprite speed
image_speed = .5;

//What sprite to show depending on the attack direction
switch (sprite_index){
    case spr_player_right: 
        sprite_index = spr_player_attackR;
    break;      
    case spr_player_left:
        sprite_index = spr_player_attackL;
    break;      
    case spr_player_face:
        sprite_index = spr_player_attackF;
    break;
    case spr_player_back:
        sprite_index = spr_player_attackB;
    break;
    
}

if (image_index >= 3 && attacked = false){
    var xx = 0;
    var yy = 0;
    switch (sprite_index){
        case spr_player_attackR: 
            xx = x+12;
            yy = y;
            break;        
        case spr_player_attackL:
            xx = x-12;
            yy = y;
            break;        
        case spr_player_attackF:
            xx = x;
            yy = y+10;
            break;        
        case spr_player_attackB:
            xx = x;
            yy = y-10; ;
            break;
    
    }
    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id;
    attacked = true;
}
