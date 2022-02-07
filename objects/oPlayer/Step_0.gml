//Controls
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

//Movement
xDirection = right - left;
xVector = xSpeed * xDirection;
yVector = yVector + grv;

//jump
if(place_meeting(x, y+1, oWall) and (jump))
{
yVector = jumpForce;
}


x += xVector;

y += yVector;

if(place_meeting(x +xVector, y, oWall))
{
// ! means "not"
	while (!place_meeting(x + xDirection, y, oWall))
	{
	//move one pixel
	x += xDirection;
	}
	xVector = 0;
}

if(place_meeting(x, y+ yVector, oWall))
{
	while (!place_meeting(x, y+sign(yVector), oWall))
	{
	y = y+sign(yVector);
	}
	xVector = 0;
}