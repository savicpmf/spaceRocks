
type=irandom(1)

if(type==0)
{
	sprite_index=fastShootPowerUp;
}

if(type==1)
{
	sprite_index=piercePowerUp;
}

// Set initial variables
amplitude = 1; // Adjust this value to control the height of the movement
speed = 0.1;   // Adjust this value to control the speed of the movement


x = random_range(0,room_width);
y = random_range(0,room_height);

