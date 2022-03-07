// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckCollisionsX()
{
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
}

function CheckCollisionsY()
{
	if(place_meeting(x, y + yVector, oWall))
	{
		while (!place_meeting(x, y + sign(yVector), oWall))
		{
			y += sign(yVector);
		}
		yVector = 0;
	}
}