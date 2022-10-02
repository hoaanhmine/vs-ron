function onCreate()
	-- background shit
	makeLuaSprite('happyRon_sky', 'happyRon_sky', -200, 0);
	setScrollFactor('happyRon_sky', 0.9, 0.9);
	scaleObject('happyRon_sky', 1.2, 1.2);

	makeLuaSprite('happyRon_ground', 'happyRon_ground', -175, -400);
	setScrollFactor('happyRon_ground', 0.9, 0.9);
	scaleObject('happyRon_ground', 1.1, 1.1);

	addLuaSprite('happyRon_sky', false);
	addLuaSprite('happyRon_ground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end