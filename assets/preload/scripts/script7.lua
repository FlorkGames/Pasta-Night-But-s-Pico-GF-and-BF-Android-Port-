function onUpdate()
	
	health = getProperty('health')

	if getProperty('health') < 0.1 then
		cameraShake("hud", 0.009, 0.9);
	elseif getProperty('health') < 0.3 then
		cameraShake("hud", 0.007, 0.7);
	elseif getProperty('health') < 0.5 then
		cameraShake("hud", 0.006, 0.6);
	elseif getProperty('health') < 0.5 then
		cameraShake("hud", 0.004, 0.4);
	end
	
end