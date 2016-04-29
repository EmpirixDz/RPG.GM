///scr_get_input
Up = keyboard_check(ord('W')) ;
Down = keyboard_check(ord('S'));
Right = keyboard_check(ord('D'));
Left = keyboard_check(ord('A'));
Dash = keyboard_check_pressed(vk_space);
//Get the axis
xaxis = (Right - Left);
yaxis = (Down - Up);
//Gamepad
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    Dash = gamepad_button_check_pressed(0, gp_face2);
 
}


