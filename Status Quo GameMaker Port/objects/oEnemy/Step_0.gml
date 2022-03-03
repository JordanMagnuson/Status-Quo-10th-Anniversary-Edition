continueOrbit(speedMatchLightTail());
updateRotations();
if (currentAngle > 300)
	image_alpha -= .01;
else if (currentAngle < 300 && image_alpha < 1)
	image_alpha += .01;