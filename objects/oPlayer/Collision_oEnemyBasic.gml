/// @description 

if(y<= other.y -other.sprite_height*.9)
{
global.points +=100;
instance_destroy(other);
}
else
{
room_restart();
}