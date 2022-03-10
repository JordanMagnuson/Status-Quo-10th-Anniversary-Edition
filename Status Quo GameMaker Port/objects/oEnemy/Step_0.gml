continueOrbit(speedMatchLightTail());
updateRotations();
if (instance_exists(oPlayer))
	checkCollisions();
if (currentAngle > 300)
	image_alpha -= .01;
else if (currentAngle < 300 && image_alpha < 1)
	image_alpha += .01;