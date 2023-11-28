
// Checks if power up is active
if (powerUpActive) 
{
    // Power-up effect is active
  
  
	if (powerUpType=="fastShoot")
	{
		if(keyboard_check(ord("J")) && bulletTimer<=0)
		{
			instance_create_layer(x,y,"Instances",Bullet);
			bulletTimer = fastbulletDelay; // Reset the timer
		}
		
		if (bulletTimer > 0)
		{
			bulletTimer -= 1;
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
    objPowerUpTime.powerUpDuration -= 1;

    if (objPowerUpTime.powerUpDuration <= 0)
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
	if(speed<10)
	{
		motion_add(image_angle,0.1)
	}
	
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



