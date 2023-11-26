if (powerUpActive) 
{
    // Power-up effect is active
    // Add any additional power-up effects here

	 draw_text(10, 20, string(powerUpDuration));

    powerUpDuration -= 1;

    if (powerUpDuration <= 0)
	{
        // Power-up duration has expired
        powerUpActive = false;
        // Reset any power-up effects here
    }
}

if keyboard_check(ord("W"))
{
	motion_add(image_angle,0.1)
}

if keyboard_check(ord("S"))
{
	motion_add(image_angle,-0.1)
}

if keyboard_check(ord("A"))
{
	image_angle+=4;
}

if keyboard_check(ord("D"))
{
	image_angle-=4;
}

move_wrap(true,true,0)

if keyboard_check_pressed(ord("J"))
{
	instance_create_layer(x,y,"Instances",Bullet);
}

if (keyboard_check(ord("K")) && powerUpActive)
{
	instance_create_layer(x,y,"Instances",Bullet);
}