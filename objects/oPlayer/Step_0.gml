/// @descr Controls, Movement, Colision
//Controls
restart = keyboard_check_pressed(ord("R"));
if restart
room_restart();

//Die In A Pit
if (y>=room_height)
{
room_restart();
}

CheckInputs();

PlayerState_Walking();
	
yVector += grv;
CheckCollisionsY()
y += yVector;


//jump
if (place_meeting(x, y + 1, oWall) and (jump))
{
PlayerState_Jumping()
}
