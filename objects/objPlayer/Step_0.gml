
// Checks if power up is active
if (powerUpActive) 
{
    // Power-up effect is active
  
  
	if (powerUpType=="fastShoot")
	{
		if(keyboard_check(ord("J")))
		{
			instance_create_layer(x,y,"Instances",Bullet);
		}
	}
	
	if (powerUpType=="pierce")
	{
		 if keyboard_check_pressed(ord("J"))
		 {
			instance_create_layer(x,y,"Instances",Bullet);
			Bullet.pierce=true;
			Bullet.sprite_index=pierceBullet
		 }
		
	}
 
	// reduces power up time
    powerUpTime.powerUpDuration -= 1;

    if (powerUpTime.powerUpDuration <= 0)
	{
        // Power-up duration has expired
        powerUpActive = false;
		powerUpType="";
		instance_create_layer(-100,-100,"Instances",Bullet);
		Bullet.pierce=false;
    }
}
else if keyboard_check_pressed(ord("J"))
{
	instance_create_layer(x,y,"Instances",Bullet);
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



