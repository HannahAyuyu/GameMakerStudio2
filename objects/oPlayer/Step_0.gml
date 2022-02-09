//Controls
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
jump = keyboard_check_pressed(ord("W"));

//Movement
xVector = xSpeed * (right - left);

//jump
if (place_meeting(x, y + 1, oWall) and (jump))
{
yVector = jumpForce;
}
yVector += grv;

//Colision check
if (place_meeting(x + xVector, y, oWall))
{
//while the player isn't moving into the wall
	while (!place_meeting(x + sign(xVector), y, oWall))
	{
	//move one pixel
	x += sign(xVector);
	}
	xVector = 0;
}
x += xVector;

if(place_meeting(x, y + yVector, oWall))
{
	while (!place_meeting(x, y + sign(yVector), oWall))
	{
	y += sign(yVector);
	}
	yVector = 0;
}
y += yVector;
yVector = grv;
