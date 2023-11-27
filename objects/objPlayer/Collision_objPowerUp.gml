
instance_destroy(other)


if (other.sprite_index==fastShootPowerUp)
{
	powerUpType="fastShoot";
}

else if (other.sprite_index==piercePowerUp)

{
	powerUpType="pierce";
}

powerUpTime.powerUpDuration=room_speed * 5;
powerUpActive = true;

instance_create_layer(10,10,"Instances",objPowerUp);
