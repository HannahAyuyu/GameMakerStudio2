//Fuck
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

spdx = (right - left) * spd;
spdy = (down - up) * spd;