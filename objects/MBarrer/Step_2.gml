if place_meeting(x + spdx, y, Barrer)
{
	while (!place_meeting(x + sign(spdx), y, Barrer))
	{
		x += sign(spdx);
	}
}

x += spdx;

if place_meeting(x, y + spdy, Barrer)
{
	while (!place_meeting(x, y + sign(spdy), Barrer))
	{
		y += sign(spdy);
	}
}

y += spdy;
